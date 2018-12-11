load("@io_bazel_rules_groovy//groovy:groovy.bzl", "groovy_library")

groovy_library(
    name = "groovylib",
    srcs = glob(["*.groovy"]),
    visibility = ["//visibility:public"],
    deps = [
        ":javalib",
    ],
)

java_library(
    name = "javalib",
    srcs = glob(["*.java"]),
)
