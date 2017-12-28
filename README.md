Bazel samples for C++ grpc for android and ios.

These are useful for sharing C++ logic between iOS and Android.

`bazel build -c dbg --config ios //ios:GreeterClient`

`bazel build -c dbg --config android //android:GreeterClientBuildBin`

Use `./sceipts/ios_fx.sh dbg` and `./scripts/android_lib.sh dbg` for building ios framework and android libraries which can be used with xcode and android studio respectively.

Note that this still uses grpc 1.6.

PS: Just tested for compilation. Did not test running this sample.
