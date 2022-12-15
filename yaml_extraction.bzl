"""Minimalist rule"""

def _yaml_extraction_impl(ctx):
    print("This is a empty rule")

yaml_extraction = rule(implementation = _yaml_extraction_impl)