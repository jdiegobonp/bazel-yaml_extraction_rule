cc_binary(
    name = "hello",
    srcs = ["hello.cpp"],
    deps = ["//hello_pkg:hello_lib"],
    includes = ["hello_pkg"]
)

load ('//:new_rule.bzl', 'new_rule')

new_rule(
    name = 'foo',
    text = 'hello, world'
)
