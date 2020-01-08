# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_groovy_dependencies():
    maybe(
        http_archive,
        name = "rules_java",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/rules_java-0.1.1.tar.gz",
            "https://github.com/bazelbuild/rules_java/releases/download/0.1.1/rules_java-0.1.1.tar.gz",
        ],
        sha256 = "220b87d8cfabd22d1c6d8e3cdb4249abd4c93dcc152e0667db061fb1b957ee68",
    )

    http_archive(
        name = "groovy_sdk_artifact",
        urls = [
            "https://mirror.bazel.build/dl.bintray.com/groovy/maven/apache-groovy-binary-2.5.8.zip",
            "https://dl.bintray.com/groovy/maven/apache-groovy-binary-2.5.8.zip",
        ],
        sha256 = "49fb14b98f9fed1744781e4383cf8bff76440032f58eb5fabdc9e67a5daa8742",
        build_file_content = """
filegroup(
    name = "sdk",
    srcs = glob(["groovy-2.5.8/**"]),
    visibility = ["//visibility:public"],
)
java_import(
    name = "groovy",
    jars = ["groovy-2.5.8/lib/groovy-2.5.8.jar"],
    visibility = ["//visibility:public"],
)
""",
    )
    native.bind(
        name = "groovy-sdk",
        actual = "@groovy_sdk_artifact//:sdk",
    )
    native.bind(
        name = "groovy",
        actual = "@groovy_sdk_artifact//:groovy",
    )

    jvm_maven_import_external(
        name = "junit_artifact",
        artifact = "junit:junit:4.12",
        server_urls = ["https://mirror.bazel.build/repo1.maven.org/maven2"],
        licenses = ["notice"],
        artifact_sha256 = "59721f0805e223d84b90677887d9ff567dc534d7c502ca903c0c2b17f05c116a",
    )
    native.bind(
        name = "junit",
        actual = "@junit_artifact//jar",
    )

    jvm_maven_import_external(
        name = "spock_artifact",
        artifact = "org.spockframework:spock-core:1.3-groovy-2.5",
        server_urls = ["https://mirror.bazel.build/repo1.maven.org/maven2"],
        licenses = ["notice"],
        artifact_sha256 = "4e5c788ce5bac0bda41cd066485ce84ab50e3182d81a6789b82a3e265cd85f90",
    )
    native.bind(
        name = "spock",
        actual = "@spock_artifact//jar",
    )
