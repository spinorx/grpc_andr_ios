package(default_visibility = ["//visibility:public"])

load("@build_bazel_rules_apple//apple:ios.bzl", "ios_static_framework")

objc_library(
  name = "greeterClientLib",
  srcs = [
    "GreeterClient.mm",
  ],
  hdrs = [
    "GreeterClient.h",
  ],
  deps = [
    "//cpp:greeter_client",
  ],
)

ios_static_framework(
  name = "GreeterClientFx",
  bundle_id = "com.spinorx.GreeterClientFx",
  minimum_os_version = "9.0",
  hdrs = [
    "GreeterClient.h",
  ],
  deps = [
    ":greeterClientLib",
  ],
)
