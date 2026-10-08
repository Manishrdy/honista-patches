# Honista patches

Private testing repository for the Morphe **Honista v13 complete local fixes** patch bundle.

Download `honista-patches-1.0.0.mpp` from the **v1.0.0** test release and import it into Morphe Manager as a **Local** patch source. Select the original Honista v13 ARM64 APK and the complete local fixes patch. Supported package/version: `cc.honista.app`, `426.0.0.37.69` (version code `383207253`).

See [the patch project guide](honista-patches/README.md) for compatibility checks, included changes, building, and signing instructions. Updating an existing patched installation requires its original signing key, which stays outside Git.

## Build

```sh
cd honista-patches
./gradlew :patches:buildAndroid
```

The result is `honista-patches/patches/build/libs/patches-1.0.0.mpp`. JDK 17+ and Android SDK platform 36/build-tools 36.1.0 are required. Fresh GitHub Packages dependency downloads may require your own read-packages credentials as described in the guide.

## Files excluded from Git

| Files | Reason |
| --- | --- |
| `*.apk`, `*.apkm`, `*.xapk` | Original apps and generated APKs |
| `analysis/`, `decoded/` | Local investigations, screenshots, captures and full decompiled app |
| `output/`, `*.mpp`, `*.zip` | Generated release artifacts; attach the MPP to GitHub Releases |
| Markdown except `README.md` | Local action log and working notes |
| `build/`, `.gradle/`, `.kotlin/`, classes and logs | Regenerable build/cache files |
| Audit JSON/reports | Local validation records and workspace paths |
| Keystores, private keys, `.env` | Private signing and authentication material |
| IDE/macOS state | Machine-specific files |

The Gradle wrapper JAR, baseline class fingerprints, helper DEX and frozen startup-module DEX are required inputs and intentionally retained. `methods.dex` is generated from the tracked `payload-smali/` sources.

## Validation

Morphe Desktop 1.18.1 successfully patched the original APK with its default mode. All 25 changed/added classes and the startup-module asset match the tested build. Existing modified inputs are rejected. Android Manager UI testing remains pending because the phone was disconnected during bundle preparation.
