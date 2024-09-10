load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_mayhem_repositories():
    http_file(
        name = "mayhem_cli_linux",
        urls = ["https://app.mayhem.security/cli/Linux/mayhem"],
        executable = True,
    )
    
    http_file(
        name = "mayhem_cli_windows",
        urls = ["https://app.mayhem.security/cli/Windows/mayhem.exe"],
        executable = True,
    )
    
    http_file(
        name = "yq_cli_linux",
        urls = ["https://github.com/mikefarah/yq/releases/download/v4.44.3/yq_linux_amd64"],
        sha256 = "a2c097180dd884a8d50c956ee16a9cec070f30a7947cf4ebf87d5f36213e9ed7",
        executable = True,
    )
    
    http_file(
        name = "yq_cli_windows",
        urls = ["https://github.com/mikefarah/yq/releases/download/v4.44.3/yq_windows_amd64.exe"],
        sha256 = "d509d51e6db30ebb7c9363b7ca8714224f93a456a421d7a7819ab564b868acc7",
        executable = True,
    )

def rules_mayhem_archives():
    maybe(
        http_archive,
        name = "bazel_skylib",
        sha256 = "bc283cdfcd526a52c3201279cda4bc298652efa898b10b4db0837dc51652756f",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "platforms",
        sha256 = "218efe8ee736d26a3572663b374a253c012b716d8af0c07e842e82f238a0a7ee",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/platforms/releases/download/0.0.10/platforms-0.0.10.tar.gz",
            "https://github.com/bazelbuild/platforms/releases/download/0.0.10/platforms-0.0.10.tar.gz",
        ],
    )