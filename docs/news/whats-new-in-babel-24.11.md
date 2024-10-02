# What's new in babel 24.11

**Draft**

## Manual thoroughly revised

It’s a work in progress, but a good deal of obsolete comments have been
updated, sections have been reorganized, and some explanations have been
extended. There are also more examples.

The layout is also somewhat different — macro and environment names are not
set in the margin anymore.

## Transform variables

Values in some transforms are hardcoded in the `ini` files and cannot
be modified. Now a new feature in introduced to readjust them. No `ini`
has been modified yet, but CJK languages (for proper margin alignment),
French (spaces with punctuation) and Tibetan (for traditional
justification) will be extended soon.

Only numeric parameters in prehyphenation.

`{variable|default}`: uses the variable as defined by
\SetTransformValue{<locale-name>}{<variable-name>}{<value>}. If the
variable is not defined (or its value is `nil`), use the default value.





