package(default_visibility = ["//visibility:public"])

load("@build_bazel_rules_apple//apple:ios.bzl", "ios_static_framework")

objc_library(
  name = "greeterClientLib",
  srcs = [
    "GreeterClient.mm",
  ],
  deps = [
    "//cpp:greeter_client",
  ],
)

ios_static_framework(
  name = "GreeterClient",
  bundle_id = "GreeterClient",
  minimum_os_version = "9.0",
  hdrs = [
  ],
  deps = [
    ":greeterClientLib",
  ],
)
