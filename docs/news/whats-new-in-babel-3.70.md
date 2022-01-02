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

Remember transforms are no available in XeTeX or pdfTeX, which still
require the shorthand. This is a LuaTeX-only feature.










