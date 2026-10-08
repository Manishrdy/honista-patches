package X;
import android.app.Application;
import android.util.Log;
import java.io.*;
import java.lang.reflect.Method;
import java.security.MessageDigest;
public final class LocalModuleOverride {
 private static String hash(byte[] b) throws Exception {
  byte[] digest=MessageDigest.getInstance("SHA-256").digest(b);
  StringBuilder s=new StringBuilder();
  for(byte v:digest) s.append(String.format(java.util.Locale.ROOT,"%02x", v & 255));
  return s.toString();
 }
 public static Object invoke(Method method,Object target,Object[] args) throws Exception {
  Object result=method.invoke(target,args);
  if (!(result instanceof byte[])) return result;
  byte[] bytes=(byte[])result;
  if(bytes.length<8 || bytes[0]!='d' || bytes[1]!='e' || bytes[2]!='x' || bytes[3]!=10) return result;
  if(!hash(bytes).equals("7f02b30d37107a4b5a8ec328d48b53f354008c341e68f5f57598bee5118c662a")) {
   Log.w("HonistaIntegrity", "Unrecognized DEX: unchanged; integrity patch not applied");
   return result;
  }
  Application app=(Application)Class.forName("X.ah").getMethod("a").invoke(null);
  ByteArrayOutputStream out=new ByteArrayOutputStream();
  try(InputStream in=app.getAssets().open("local-startup-module.dex")) {
   byte[] buffer=new byte[8192]; int n;
   while((n=in.read(buffer))!=-1) out.write(buffer,0,n);
  }
  byte[] replacement=out.toByteArray();
  if(!hash(replacement).equals("60f049a8f1ae8c7506f28b769850ce0f5a81a9a35ce6eae8b0ff48f5174761e6")) throw new IOException("Invalid local module asset");
  Log.i("HonistaIntegrity","Loaded module with local integrity checker disabled");
  return replacement;
 }
}
