workspace(name = "io_bazel_rules_groovy")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
  name = "bazel_toolchains",
  urls = [
    "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/42619b5476b7c8a2f5117f127d5772cc46da2d1d.tar.gz",
    "https://github.com/bazelbuild/bazel-toolchains/archive/42619b5476b7c8a2f5117f127d5772cc46da2d1d.tar.gz",
  ],
  strip_prefix = "bazel-toolchains-42619b5476b7c8a2f5117f127d5772cc46da2d1d",
  sha256 = "fa1459abc7d89db728da424176f5f424e78cb8ad7a3d03d8bfa0c5c4a56b7398",
)

load("//groovy:groovy.bzl", "groovy_repositories")
groovy_repositories()
