load("@io_bazel_rules_groovy//groovy:groovy.bzl", "groovy_binary")

groovy_binary(
    name = "GroovyApp",
    srcs = glob(["*.groovy"]),
    main_class = "app.GroovyApp",
    deps = [
        "//example/src/main/groovy/lib:groovylib",
    ],
)
