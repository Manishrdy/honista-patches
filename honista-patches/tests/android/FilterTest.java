package X;
import java.net.URI;
import java.io.*;
import java.nio.charset.StandardCharsets;
import org.json.*;
public final class FilterTest {
    static int checks;
    static final class TrackedInput extends ByteArrayInputStream {
        boolean closed;
        TrackedInput(byte[] b) { super(b); }
        public void close() throws IOException { closed = true; super.close(); }
    }
    static final URI FEED = URI.create("https://i.instagram.com/api/v1/feed/timeline/");
    static final URI CLIPS = URI.create("https://i.instagram.com/api/v1/clips/recommended/");
    static void check(boolean b, String name) { if (!b) throw new AssertionError(name); checks++; }
    static JSONObject run(URI uri, String s) throws Exception { return new JSONObject(LocalSponsoredFilter.filter(uri,s)); }
    public static class Request { public URI address = FEED; }
    public static class Response { public Request A00 = new Request(); }
    static byte[] read(InputStream in) throws Exception {
        ByteArrayOutputStream out = new ByteArrayOutputStream(); byte[] b = new byte[8192]; int n;
        while ((n=in.read(b))!=-1) out.write(b,0,n); return out.toByteArray();
    }
    public static void main(String[] args) throws Exception {
        String feed="{\"feed_items\":[{\"media_or_ad\":{\"id\":\"organic\",\"ad_metadata\":[]}},{\"media_or_ad\":{\"id\":\"ad\",\"ad_metadata\":[{}]}},{\"suggested_users\":{\"users\":[{}]}},{\"ad\":{\"id\":\"ad2\"}}],\"next_max_id\":\"cursor\"}";
        JSONObject f=run(FEED,feed);
        check(f.getJSONArray("feed_items").length()==1,"feed ads and suggestions removed");
        check(f.getString("next_max_id").equals("cursor"),"pagination preserved");
        check(f.getJSONArray("feed_items").getJSONObject(0).getJSONObject("media_or_ad").getString("id").equals("organic"),"organic feed retained");
        JSONObject clips=run(CLIPS,"{\"items\":[{\"media\":{\"id\":\"organic\"}},{\"media\":{\"is_ad\":true}},{\"media\":{\"ad_metadata\":{\"x\":1}}},{\"media\":{\"is_paid_partnership\":true}}],\"more_available\":true}");
        check(clips.getJSONArray("items").length()==2,"clips ad wrappers removed, paid partnership retained");
        check(clips.getBoolean("more_available"),"clips paging retained");
        JSONObject graph=run(URI.create("https://i.instagram.com/api/v1/wwwgraphql/ig/query/"),"{\"data\":{\"feed\":{\"edges\":[{\"node\":{\"media\":{\"is_sponsored\":true}}},{\"node\":{\"id\":\"ok\"}}],\"page_info\":{\"end_cursor\":\"abc\"}}}}");
        check(graph.getJSONObject("data").getJSONObject("feed").getJSONArray("edges").length()==1,"nested graphql ads removed");
        check(graph.getJSONObject("data").getJSONObject("feed").getJSONObject("page_info").getString("end_cursor").equals("abc"),"graphql cursors retained");
        JSONObject stories=run(FEED,"{\"reels\":{\"one\":{\"items\":[{\"ad_metadata\":[{}]},{\"id\":\"ok\"}]}},\"tray\":[{\"items\":[{\"is_ad\":true},{\"id\":\"ok\"}]}]}");
        check(stories.getJSONObject("reels").getJSONObject("one").getJSONArray("items").length()==1,"reel-map filtering");
        check(stories.getJSONArray("tray").getJSONObject(0).getJSONArray("items").length()==1,"tray organic group preserved");
        String nested="{\"feed_items\":[{\"end_of_feed_demarcator\":{\"group_set\":{\"groups\":[{\"feed_items\":[{\"media_or_ad\":{\"ad_metadata\":[{}]}},{\"media_or_ad\":{\"id\":\"organic\"}}]}]}}}]}";
        check(run(FEED,nested).getJSONArray("feed_items").getJSONObject(0).getJSONObject("end_of_feed_demarcator").getJSONObject("group_set").getJSONArray("groups").getJSONObject(0).getJSONArray("feed_items").length()==1,"nested group uses correct inner media");
        check(LocalSponsoredFilter.filter(FEED,"not json").equals("not json"),"malformed passthrough");
        check(LocalSponsoredFilter.filter(URI.create("https://i.instagram.com/api/v1/direct_v2/inbox/"),feed)==feed,"messages passthrough");
        check(LocalSponsoredFilter.filter(URI.create("https://instagram.com.evil.test/api/v1/feed/timeline/"),feed)==feed,"foreign hosts passthrough");
        check(run(URI.create("https://i.instagram.com/api/v1/ads/reels/"),"{\"items\":[{\"ad_id\":\"123\"},{\"id\":\"ok\"}]}").getJSONArray("items").length()==1,"separate ads response filtering");
        check(run(FEED,"{\"feed_items\":[{\"media_or_ad\":{\"injected\":{\"ad_id\":\"123\",\"ad_token\":\"test\"}}},{\"media_or_ad\":{\"id\":\"organic\",\"injected\":null}}]}").getJSONArray("feed_items").length()==1,"injected feed advertising without ad_metadata removed");
        check(run(CLIPS,"{\"items\":[{\"media\":{\"injected\":{\"ad_id\":\"456\"}}},{\"media\":{\"injected\":{},\"id\":\"ok\"}}]}").getJSONArray("items").length()==1,"injected Reels advertising removed, empty metadata retained");
        String ordinary="{\"items\":[{\"media\":{\"id\":\"normal\",\"caption\":\"ads\"}},null],\"ad_metadata\":[]}";
        check(LocalSponsoredFilter.filter(CLIPS,ordinary)==ordinary,"ordinary recommendations and null preserved byte for byte");
        check(new JSONObject(new String(read(LocalSponsoredFilter.stream(new Response(),new ByteArrayInputStream(feed.getBytes(StandardCharsets.UTF_8)))),StandardCharsets.UTF_8)).getJSONArray("feed_items").length()==1,"direct stream adapter");
        TrackedInput tracked = new TrackedInput(feed.getBytes(StandardCharsets.UTF_8));
        LocalSponsoredFilter.stream(new Response(),tracked);
        check(tracked.closed,"fully consumed source closed");
        byte[] big=new byte[16*1024*1024+1]; big[0]=42; big[big.length-1]=43;
        check(java.util.Arrays.equals(big,read(LocalSponsoredFilter.stream(new Response(),new ByteArrayInputStream(big)))),"large response passthrough exact");
        System.out.println("PASS: "+checks+" sponsored-filter checks");
    }
}
