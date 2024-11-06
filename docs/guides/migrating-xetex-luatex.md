# Migrating from XeTeX to LuaTeX

**Draft**

In many languages and scripts, particularly Latin, Greek and Cyrillic,
a document written for `xetex` should work with `luatex` without
changes.

## Fonts

By default, the font renderer in `xetex` is Harfbuzz (the only
available). With `luatex` the default renderer is `Node`, which is not
suited for some Asian scripts (Indic, South Asian). So, you may need to
replace something like
```tex
\babelfont{rm}{FreeSerif}
```
with
```
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}
```

## RTL scripts

The `xetex` and `luatex` models are quite different. Actually, `xetex`
lacked a true RTL model. The main change is to replace the package
option `bidi=bidi` with `bidi=basic`. If you were using `bidi=default`,
no change is necessary.

Note `xetex` only ‘reverses’ the text, while `luatex` ‘reverses’ but
also margins, columns, and so on, so with these elements expect
different results.

## `Mapping`

This font feature is not available in `luatex`, but it can be replaced
advantageously with
[transforms](non-standard-hyphenation-with-luatex.html). There are
already some transforms to transliterate a few languages. Native digits
are already handled by `babel` out of the box.

## ‘Interchar’ mechanism

It can be replaced with transforms, too.

The package `ucharclasses` can be replaced in most cases with the
`babel` option `onchar`. The latter, unlike the former, works with RTL
scripts.

