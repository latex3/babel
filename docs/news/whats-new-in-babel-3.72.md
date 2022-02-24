# What's new in babel 3.72

2022-02-24

⚠ Remember the `luatex` support for `amsmath` has not been finished.
Expect some anomalous vertical skips in displays (partly due to a bug
in luatex — a fix is on the way), even with the standard environments,
and misplaced tags in some cases (for example, with `aligned` and
`gathered`). While version 3.72 will produce very often the expected
result in monolingual documents, there are still some rough edges.

## Fixes

* Captions in the `ini` file for Thai were wrong (very likely a
mistake in the conversion to Unicode). 

* With `onchar` some hyphenation settings were ignored if the
language was never explicitly selected.

* Extra colon in Polish `cc` (#172)

## Info with main

This is a minor change. The purpose of the key `main` was just to
overcome a wrong setting of the main language in some cases,
particularly when the languages were declared at both `\usepackage` and
`\selectlanguage`, not as a general procedure to set it.

Now an ‘info’ is printed to the log file recommending the default way
to set it (namely, as the last declared language).





