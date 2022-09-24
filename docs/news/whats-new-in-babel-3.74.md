# What's new in babel 3.74

2022-04-30

## Option `safe`

<span style="color:red;">⚠</span> This option will be set by default to
`none` in a future release (even currently this value is “strongly”
recommended). This option now accepts the combination of `bib` and
`ref` as a way to force the current behavior.

The internal macros related to this option (containing `@safe@actives`)
will be preserved for compatibility, but very likely they will be
deprecated.

## Fixes in math

`luatex` 1.15 fixes a bug in the vertical spacing when a display math is
preceded by a short line in RTL mode. This has allowed to eventually get
the proper spacing, although there are some issues when the display
isn't numbered (there is an easy workaround and `babel` applies it). 

The vertical spacing with `amsmath` has been improved, too, but there
are, again, some pending issues (bad spacing when the display starts a
paragraph).

## More fixes

* Minor bugs in Khmer, Turkmen and Marathi have been fixed.
* An error was raised with transforms when `|` was active.
