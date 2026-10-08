"""Optional: rebuild helpers.dex after editing helper-src. Does not change phone apps."""
from pathlib import Path
import os, re, subprocess, hashlib
root = Path(__file__).resolve().parents[1]
sdk = Path(os.environ.get('ANDROID_HOME') or os.environ.get('ANDROID_SDK_ROOT') or str(Path.home() / 'Library/Android/sdk'))
tools = sdk / 'build-tools' / '36.1.0'
jar = sdk / 'platforms/android-36/android.jar'
assert tools.exists() and jar.exists(), 'Install Android SDK platform 36 and build-tools 36.1.0'
classes = root / 'build/helper-classes'; dex = root / 'build/helper-dex'
classes.mkdir(parents=True, exist_ok=True); dex.mkdir(parents=True, exist_ok=True)
module = root / 'patches/src/main/resources/honista/startup-module.dex'
source = root / 'helper-src/X/LocalModuleOverride.java'
module_hash = hashlib.sha256(module.read_bytes()).hexdigest()
assert module_hash in source.read_text(), 'Update LocalModuleOverride replacement hash when changing the module'
subprocess.run(['javac', '-source', '8', '-target', '8', '-cp', str(jar), '-d', str(classes)] + [str(p) for p in sorted((root / 'helper-src/X').glob('*.java'))], check=True)
subprocess.run([str(tools / 'd8'), '--min-api', '28', '--output', str(dex)] + [str(p) for p in sorted((classes / 'X').glob('*.class'))], check=True)
(root / 'patches/src/main/resources/honista/helpers.dex').write_bytes((dex / 'classes.dex').read_bytes())
print('Rebuilt helpers.dex; run ./gradlew :patches:buildAndroid next')
