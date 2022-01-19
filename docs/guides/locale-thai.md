# Thai

The Thai language is available for `xetex` and `luatex`, but the
preferred engine is the latter. With `luatex`, it should work with the
default font renderer and Harfbuzz.

There is a complete example (with `microtype`) in the repository
([tex](https://github.com/latex3/babel/blob/main/samples/lua-thai.tex), 
[pdf](https://github.com/latex3/babel/blob/main/samples/lua-thai.pdf)).


![](../media/lua-thai.png)

## Line breaking

Rules are harcoded in XeTeX, but in LuaTeX the standard hyphenation
mechanism is used, son that you can load different rules or fine tune the
loaded ones with `\babelpatterns` (or even a transform).

With XeTeX, `babel` attempts to get rid of hyphen chars at the end of
lines, but due to the limitations of this engine it sometimes fails.
With LuaTeX there shouldn’t be any problems.

Justification in both engines is controlled by a couple of options in
`\babelprovide`.

* `intraspace` sets the inner spaces in em units (so, `0 .1 0` is 0em
  plus .1em). Like `\spaceskip`, the em unit applied is that of the
  current text (more precisely, the previous glyph).
* `intrapenalty` sets the inner penalty of the breaking opportunities.
   



