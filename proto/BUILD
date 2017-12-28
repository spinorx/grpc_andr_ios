package(default_visibility = ["//visibility:public"])

load("@org_pubref_rules_protobuf//cpp:rules.bzl", "cc_proto_library")

cc_proto_library(
  name = "helloworld",
  protos = [
    "helloworld.proto",
  ],
  with_grpc = True,
  proto_deps = [
  ],
  defines = [
    "LANG_CXX11=1",
  ],
)
