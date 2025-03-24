# Migrating from XeTeX to LuaTeX

**Draft**

> *Improve this page! Feel free to draft a pull request [on GitHub](https://github.com/latex3/babel/tree/docs/docs)*.

In many languages and scripts, particularly Latin, Greek and Cyrillic,
a document written for `xetex` should work with `luatex` without
changes.

See also the companion guide [Migrating from pdfTeX to
LuaTeX](https://latex3.github.io/babel/guides/migrating-pdftex-luatex.html)
if you are switching from pdfTeX.

It is worth noting that, contrary to what is sometimes assumed, the use
of `luatex` does not require any programming knowledge in Lua (only
certain advanced functions not available in other engines).

## Fonts

By default, the font renderer in `xetex` is Harfbuzz (the only
available). With `luatex` the default renderer was `Node`, but in
version
[≥24.14](https://latex3.github.io/babel/news/whats-new-in-babel-24.14.html)
is Harfbuzz, except scripts of the ‘Greek family’ (including Latin and
Cyrillic). So, in versions ≤24.13 you may need to
replace something like
```tex
\babelfont{rm}{FreeSerif}
```
with
```tex
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}
```

## RTL scripts

The `xetex` and `luatex` models are quite different (actually, `xetex`
lacks a true RTL model). The main change is to replace the package
option `bidi=bidi` with `bidi=basic`. If you were using `bidi=default`,
no change is necessary.

Note `xetex` only ‘reverses’ the text, while `luatex` ‘reverses’ also
margins, columns, and so on, so with these elements expect different
results.

## `Mapping`

This font feature is not available in `luatex`, but it can be replaced
advantageously with
[transforms](non-standard-hyphenation-with-luatex.html). There are
already some transforms to transliterate a few languages. Native digits
are already handled by `babel` out of the box.

In some cases, a better option are font features, but there aren’t
available with `Harfbuzz`. As a reference, here are some basic patterns
taken from `luaotfload` (lowercase means ‘from’ and uppercase ‘to’;
note the `ligature` type is, in some sense, ‘reversed’). See sec. 15 in
[Font
extensions](https://articles.contextgarden.net/journal/2017/27-76.pdf)
for further info (focused on `context`, but pure Lua examples are valid
in `lualatex`):
```lua
fonts.handlers.otf.addfeature {
    name = "stest",
    type = "substitution",
    data = {
        a = "X",
        b = "P",
    }
}
fonts.handlers.otf.addfeature {
    name = "mtest",
    type = "multiple",
    data = {
        a = { "X", "Y" },
        b = { "P", "Q" },
    }
}
fonts.handlers.otf.addfeature {
    name = "ltest",
    type = "ligature",
    data = {
        X = { "a", "b" },
        Y = { "d", "a" },
    }
}
fonts.handlers.otf.addfeature {
    name = "ktest",
    type = "kern",
    data = {
        a = { b = -500 },
    }
}
```

## ‘Interchar’ mechanism

It can be replaced with transforms, too.

The package `ucharclasses` can be replaced in most cases with the
`babel` option `onchar`. The latter, unlike the former, works with RTL
scripts.

