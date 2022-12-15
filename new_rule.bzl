"""Minimalist rule"""

def _new_file_impl(ctx):
    my_new_file = ctx.actions.declare_file('foo.tx')
    ctx.actions.write(
        content=ctx.attr.text,
        output=my_new_file
    )

    return DefaultInfo(
        files = depset([my_new_file])
    )

new_rule = rule (
    implementation=_new_file_impl,
    attrs={
        'text': attr.string(
            mandatory=True,
        )
    }
)

