load(":dpkg.bzl", _dpkg_list = "dpkg_list", _dpkg_src = "dpkg_src")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

dpkg_list = _dpkg_list
dpkg_src = _dpkg_src

def package_manager_repositories():
  http_file(
      name = "dpkg_parser",
      urls = [('https://artifactory.build.nvda.ai/artifactory/nucleus/thirdparty/bazel/dpkg_parser/dpkg_parser-0.15.par')],
      executable = True,
      sha256 = "3e28a15046e9a9a207ae718b4acffb7d91c5f768caf3c3cac0a89933863c6bd9",
  )
