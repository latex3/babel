# What's new in babel 3.70

*(Development.)*

## Finnish

*(Only luatex.)*

With the transform `prehyphen.nobreak` line breaks just after hyphens
prepended to words are prevented, like in “pakastekaapit ja -arkut”.
More precisely, in the sequence [space or punctuation] + [hyphen] +
[alphanumeric], the hyphen is moved to the beginning of the following
line if necessary. This makes unnecessary to write systematically `"=`
in these situations.

Remember transforms are not available in XeTeX or pdfTeX, which still
require the shorthand. This is a LuaTeX-only feature.

## Fixes for amsmath with luatex (still tentative)

Please, note these fixes are basically dirty tricks to get the most
typical cases to work, after a ‘hunting’ in search of possible issues
in every environment, with right al left tags. The pending issues are
related to luatex, to amsmath and (of course) to babel itself.

The environments patched are `align(*)`, `multline(*)`, `aligned`,
`gather(*)` `subequation`, `equation(*)`, `split`, cases`.

The commands `\text` and `\intertext` has been patched, too, to set the
correct direction (but `\hbox` won’t work as expected).

Fixing `equation` turned out to be much more involved as expected
because of long standing bugs in `\eqno` and `\leqno`. Not only the the
label may be misplaced with the latter (sometimes, but it seems to work
with `babel`), but the calculations for the skip before and after the
equation, based on the length of the previous line, are reversed (the
skip for `\eqno` is that for `\leqno` and vice versa).



