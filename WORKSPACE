workspace(name = "io_bazel_rules_groovy")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_toolchains",
    sha256 = "726b5423e1c7a3866a3a6d68e7123b4a955e9fcbe912a51e0f737e6dab1d0af2",
    strip_prefix = "bazel-toolchains-3.1.0",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/releases/download/3.1.0/bazel-toolchains-3.1.0.tar.gz",
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/3.1.0/bazel-toolchains-3.1.0.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

# Creates toolchain configuration for remote execution with BuildKite CI
# for rbe_ubuntu1604
rbe_autoconfig(
    name = "buildkite_config",
)

load("//groovy:repositories.bzl", "rules_groovy_dependencies")

rules_groovy_dependencies()
