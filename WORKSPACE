workspace(name = "io_bazel_rules_groovy")

http_archive(
  name = "bazel_toolchains",
  urls = [
    "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/archive/646207624ed58c9dc658a135e40e578f8bbabf64.tar.gz",
    "https://github.com/bazelbuild/bazel-toolchains/archive/646207624ed58c9dc658a135e40e578f8bbabf64.tar.gz",
  ],
  strip_prefix = "bazel-toolchains-646207624ed58c9dc658a135e40e578f8bbabf64",
  sha256 = "4ab012a06e80172b1d2cc68a69f12237ba2c4eb47ba34cb8099830d3b8c43dbc",
)

load("//groovy:groovy.bzl", "groovy_repositories")
groovy_repositories()
