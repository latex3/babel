# What's new in babel 24.11

2024-10-05

## Manual thoroughly revised

The manual is still being refined, but many outdated comments have been
revised or directly deleted, sections restructured, and certain
explanations expanded. Additionally, a greater number of examples have
been included.

The design has also changed slightly — names of macros and environments
are no longer placed in the margins.

## Transform variables

Previously, values for some transforms were fixed in the `ini` files
and unchangeable. A new feature has now been introduced to allow
adjustments (specifically numeric parameters in prehyphenation). While
no `ini` file has been altered yet, updates for Chinese languages (to
align margins correctly), Japanese (also small kana), French (spacing
with punctuation), and Tibetan (for traditional text justification) are
planned for the near future.

This applies solely to numeric parameters in prehyphenation.

In the transforms section of `ìni` files, a value of
`{<variable-name>|<default>}` employs the variable as set by
`\SetTransformValue{<locale-name>}{<variable-name>}{<value>}`. If the
variable is undefined (or its value is `nil`), the `default` is used
instead.

## Other changes

Updated the internal list of RTL scripts to add Garay, Todhri, Elymaic,
Yazidi, and a few more.






