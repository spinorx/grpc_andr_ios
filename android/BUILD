package(default_visibility = ["//visibility:public"])

cc_binary(
  name = "libGreeterClient.so",
  srcs = [
    "greeter_client_jni.cc",
  ],
  deps = [
    "//cpp:greeter_client",
  ],
  linkopts = [
  ],
  linkshared = True,
  linkstatic = True,
)

cc_library(
  name = "native_deps",
  srcs = [
    ":libGreeterClient.so",
  ],
)


# https://github.com/bazelbuild/bazel/issues/348
# aar not supported yet.
android_library(
  name = "GreeterClient",
  srcs = glob([
    "java/**/*.java",
  ]),
  custom_package = "GreeterClient",
  manifest = "AndroidManifest.xml",
  deps = [
    ":native_deps",
  ],
)

android_binary(
  name = "GreeterClientBuildBin",
  manifest = "AndroidManifest.xml",
  custom_package = "GreeterClient",
  deps = [
    ":GreeterClient",
    ":native_deps",
  ],
)
