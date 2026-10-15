# What's new in babel 26.14

2026-10-15

This version marks the beginning of the adaptation of babel to
`\DocumentMetadata` and its PDF tagging features for accessibility.
This is a work in progress and currently must be explicitly enabled
using the following package options:
* `babel-metadata=on` if `\DocumentMetadata` is used but you are not
  interested in tagging.
* `babel-metadata=tagging` if PDF tagging has been activated and you
  want the babel extensions.
  
These options are temporary. They won’t be necessary in the future.

## Document metadata

Currently modifies the instances for `\chapter` (and `\appendix`) and
`\part`. For the moment it’s just a workaround and not the definitive
code. This patch is applied if any of the following locales is loaded:
* `\chapter` (+ sometimes `\appendix`): `basque`, `hungarian`,
  `japanese`, `kazakh`, `korean`, `lithuanian`, `chinese`.
* `\part`: `japanese`, `korean`, `lithuanian`, `chinese`.

## PDF tagging

Currently only text in `\foreignlanguage` is tagged. A new key
`actualtext` is allowed in the optional argument of `\foreignlanguage`
(e.g., with something like `\foreignlanguage[actualtext=The actual
text]{chinese}{...}`). Reading aloud not yet tested. 

Bidi text seems to be properly tagged with `lualatex`, but with
`xelatex`, whose support for bidi text is limited, it doesn’t work. The
PDF attribute `/WritingMode` is under study.

# Fixes

* Lua code much optimized by [Udi Fogiel](https://github.com/Udi-Fogiel) (#447).
* Error with languages without a name in `fontspec` in some cases (tsx 767171).
* A regression bug, which caused an error with `layout=sectioning`.
* A regression bug, which caused an error with `\UseRawInputEncoding`.
* Option `nofiles` in `\selectlanguage` was no-op.




