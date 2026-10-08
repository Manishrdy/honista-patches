package X;

import android.util.Log;
import java.io.*;
import java.lang.reflect.Field;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.*;
import org.json.*;

/** Removes sponsored collection entries before Instagram's response parser sees them. */
public final class LocalSponsoredFilter {
    private static final int LIMIT = 16 * 1024 * 1024;
    private static final Set<String> seenPaths = new HashSet<String>();
    public static boolean eligible(URI uri) {
        if (uri == null || uri.getHost() == null) return false;
        String host = uri.getHost().toLowerCase(Locale.ROOT);
        if (!(host.equals("instagram.com") || host.endsWith(".instagram.com"))) return false;
        String p = uri.getPath();
        return p != null && (p.startsWith("/api/v1/feed/") || p.startsWith("/api/v1/clips/")
            || p.startsWith("/api/v1/ads/") || p.startsWith("/api/v2/feed/") || p.startsWith("/api/v1/wwwgraphql/ig/query/")
            || p.startsWith("/graphql/query"));
    }
    private static boolean present(Object v) {
        if (v == null || v == JSONObject.NULL) return false;
        if (v instanceof JSONArray) return ((JSONArray)v).length() > 0;
        if (v instanceof JSONObject) return ((JSONObject)v).length() > 0;
        return v instanceof String && !((String)v).isEmpty();
    }
    private static boolean marker(JSONObject o) {
        // Current Instagram media uses an injected advertising object, independent of ad_metadata.
        JSONObject injected = o.optJSONObject("injected");
        if (injected != null && injected.length() > 0) return true;
        return o.optBoolean("is_ad", false) || o.optBoolean("is_sponsored", false)
            || present(o.opt("ad_metadata")) || present(o.opt("ad_id"))
            || present(o.opt("ad_tracking_token"));
    }
    private static boolean drop(JSONObject o, int depth) {
        if (depth > 4) return false;
        if (marker(o)) return true;
        String type = o.optString("__typename", "");
        if (type.equals("XDTFeedAd") || type.equals("XDTClipsAd")) return true;
        Iterator<String> keys = o.keys();
        while (keys.hasNext()) {
            String k = keys.next();
            if (k.equals("ad") || k.equals("ad4ad") || k.equals("intent_aware_ad_pivot")
                || k.equals("stand_alone_multi_ad_pivot") || k.equals("ads_feedback_interface")
                || k.equals("ads_feedback_interface_interests_picker") || k.equals("explore_story")
                || k.equals("clips_netego") || k.startsWith("suggested_")) {
                if (present(o.opt(k))) return true;
            }
        }
        for (String key : new String[]{"media_or_ad", "media", "node", "item"}) {
            JSONObject inner = o.optJSONObject(key);
            if (inner != null && drop(inner, depth + 1)) return true;
        }
        return false;
    }
    private static boolean collection(String key) {
        return key.equals("feed_items") || key.equals("items") || key.equals("edges")
            || key.equals("medias") || key.equals("clips") || key.equals("reels");
    }
    private static int walk(JSONObject o, int depth) throws JSONException {
        if (depth > 32) return 0;
        int removed = 0;
        List<String> keys = new ArrayList<String>();
        Iterator<String> it = o.keys();
        while (it.hasNext()) keys.add(it.next());
        for (String key : keys) {
            Object value = o.opt(key);
            if (value instanceof JSONObject) removed += walk((JSONObject)value, depth + 1);
            else if (value instanceof JSONArray) {
                JSONArray original = (JSONArray)value, kept = new JSONArray();
                boolean entries = collection(key);
                for (int i = 0; i < original.length(); i++) {
                    Object row = original.opt(i);
                    if (entries && row instanceof JSONObject && drop((JSONObject)row, 0)) {
                        removed++;
                        continue;
                    }
                    if (row instanceof JSONObject) removed += walk((JSONObject)row, depth + 1);
                    kept.put(row);
                }
                if (entries && kept.length() != original.length()) o.put(key, kept);
            }
        }
        return removed;
    }
    public static JSONObject apply(JSONObject json) {
        try { walk(json, 0); } catch (JSONException ignored) { }
        return json;
    }
    public static String filter(URI uri, String body) {
        if (!eligible(uri) || body == null) return body;
        try {
            JSONObject json = new JSONObject(body);
            int removed = walk(json, 0);
            synchronized (seenPaths) {
                if (seenPaths.add(uri.getPath())) Log.i("HonistaSponsored", "Response filter active for " + uri.getPath());
            }
            if (removed == 0) return body;
            Log.i("HonistaSponsored", "Removed " + removed + " sponsored/suggested entries from " + uri.getPath());
            return json.toString();
        } catch (JSONException ignored) { return body; }
    }
    private static Object field(Object o, String name) throws Exception {
        for (Class<?> c = o.getClass(); c != null; c = c.getSuperclass()) {
            try { Field f = c.getDeclaredField(name); f.setAccessible(true); return f.get(o); }
            catch (NoSuchFieldException ignored) { }
        }
        return null;
    }
    private static URI uri(Object response) throws Exception {
        Object request = field(response, "A00");
        if (request == null) return null;
        for (Class<?> c = request.getClass(); c != null; c = c.getSuperclass()) {
            for (Field f : c.getDeclaredFields()) if (f.getType() == URI.class) {
                f.setAccessible(true); return (URI)f.get(request);
            }
        }
        return null;
    }
    public static InputStream stream(Object response, InputStream input) {
        URI url;
        try { url = uri(response); } catch (Exception ignored) { return input; }
        if (!eligible(url) || input == null) return input;
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            byte[] buffer = new byte[8192]; int n;
            while ((n = input.read(buffer)) != -1) {
                out.write(buffer, 0, n);
                if (out.size() > LIMIT) return new SequenceInputStream(new ByteArrayInputStream(out.toByteArray()), input);
            }
            // The returned in-memory stream owns no network resource. Release the fully read source.
            try { input.close(); } catch (IOException ignored) { }
            byte[] original = out.toByteArray();
            String body = new String(original, StandardCharsets.UTF_8);
            String filtered = filter(url, body);
            return new ByteArrayInputStream(filtered == body ? original : filtered.getBytes(StandardCharsets.UTF_8));
        } catch (IOException ignored) {
            return new SequenceInputStream(new ByteArrayInputStream(out.toByteArray()), input);
        }
    }
}
