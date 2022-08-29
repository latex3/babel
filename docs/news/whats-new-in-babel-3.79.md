# What's new in babel 3.79

2022-08-29

This is basically a maintenance release, with some refactoring,
minor improvements in error catching, and a few names in `ini` files
fixed.

Following the CLDR, now the preferred name for ‘or’ is `odia`, although
`oriya` is still valid.

# Fixes

* Fix issues of tcolorbox in RTL (graphics layout) (#186), thanks to
  Salim Bou (@seloumi).
* `\footnote` with `bidi=default` raises an error in LuaLaTeX (#187).
* Extra blank spaces with Hebrew calendar.

# Known issues

With the latest changes in the LaTeX core, `\MakeUppercase` and
`\MakeLowercase`, `babel` casing might be broken. For example, with
Medieval Latin, `\MakeUppercase{lupus}` now prints ‘LUPUS’ instead of
‘LVPVS’. A fix is on the way.

