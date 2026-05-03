# What's new in babel 26.7

2026-05-03

## Cyrillic LICR to Unicode mapping

Some languages may require extending the built-in declarations in LaTeX
for the TU encoding, because a package may rely solely on them (like
`\cyrzh` instead of `ж`).

The file `cyrl2uni.def` provides the necessary definitions to map LaTeX
internal character representation (LICR) commands to their
corresponding Unicode points when using Unicode-aware engines like
XeTeX or LuaTeX. The mapping is direct from the LICR macros to the
corresponding Unicode characters.

It’s still a beta release and currently only Cyrillic characters are
defined. Further scripts may be added in the future.

The definition files are standalone and don’t require `babel`. You can
input them directly.

## Package option `licr`

Related to the previous feature.

`Babel` loads `cyrl2uni.def` with the Cyrillic locales. You can
deactivate these extra declarations (in case you have devised your own,
for example) with `licr=unextended`. They are ignored with lazy
loading, so if you need them you have to declare explicitly the
language in the preamble (or to input directly `cyrl2uni.def`).


