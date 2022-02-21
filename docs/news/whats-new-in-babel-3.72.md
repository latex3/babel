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




