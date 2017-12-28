workspace(name = "vircorX")

android_sdk_repository(
  name = "android_sdk",
  api_level = 25,
)

android_ndk_repository(
  name = "android_ndk",
  api_level = 25,
)
bind(name = "android/crosstool", actual = "@android_ndk//:toolchain-libcpp")

http_archive(
  name = "build_bazel_rules_apple",
  urls = [
    "https://github.com/bazelbuild/rules_apple/archive/0.1.0.tar.gz",
  ],
  strip_prefix = "rules_apple-0.1.0",
)

# //external:grpc
# Sources: https://github.com/pubref/rules_protobuf/
http_archive(
  name = "org_pubref_rules_protobuf",
  urls = [
    "https://github.com/spinorx/rules_protobuf/archive/v0.8.1.use.tar.gz",
  ],
  strip_prefix = "rules_protobuf-0.8.1.use",
)
load("@org_pubref_rules_protobuf//cpp:rules.bzl", "cpp_proto_repositories")
cpp_proto_repositories()
load("@org_pubref_rules_protobuf//objc:rules.bzl", "objc_proto_repositories")
objc_proto_repositories()
load("@org_pubref_rules_protobuf//java:rules.bzl", "java_proto_repositories")
java_proto_repositories()
bind(
  name = "grpc",
  actual = "@com_google_grpc//:grpc++",
)
