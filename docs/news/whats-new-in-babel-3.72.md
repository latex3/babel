# What's new in babel 3.72

(*Development.*)

⚠ Remember the `luatex` support for `amsmath` has not been finished.
Expect some anomalous vertical skips in displays (partly due to a bug
in luatex — a fix is on the way), even with the standard environments,
and misplaced tags in some cases (for example, with `aligned` and
`gathered`). 

## Fixes

* Captions in the `ini` file for Thai were wrong (very likely a
mistake in the conversion to Unicode). 

* With `onchar` some hyphenation settings were ignored if the
language was never explicitly selected.

## Info with main

This is a minor change. The purpose of the key `main` was just
to overcome a wrong setting of the main language in some cases,
particularly when the languages were declared at both `\usepackage` and
`\selectlanguage`, but it’s being used systematically instead of the
default and still recommended way to set it. Now there is an ‘info’
reminding the recommended syntax.






