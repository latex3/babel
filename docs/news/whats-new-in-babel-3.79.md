# What's new in babel 3.79

(*Draft*)

This is basically a maintenance release, with some refactoring,
minor improvements in error catching, and a few names in `ini` files
fixed. 

Following the CLDR, now the preferred name for ‘od’ is `odia`, although
`oriya` is still recognized.

# Fixes

* Fix issues of tcolorbox in RTL (graphics layout) (#186), thanks to
  Salim Bou (@seloumi).
* \footnote with babel bidi=default raises an error in LuaLaTeX (#187).
* Extra blank spaces with Hebrew calendar.

