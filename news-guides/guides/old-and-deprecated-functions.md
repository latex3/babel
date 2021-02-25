# Old and deprecated functions

## Fonts

A couple of tentative macros were provided by `babel` <3.9g with a partial solution for “Unicode” fonts. These macros are now deprecated — use `\babelfont`. A short description follows, for reference:
* `\babelFSstore{babel-language}` sets the current three   basic families (rm, sf, tt) as the default for the language given.
* `\babelFSdefault{babel-language}{fontspec-features}` patches `\fontspec` so that the given features are always passed as   the optional argument or added to it (not an ideal solution).
```tex
\setmainfont[Language=Turkish]{Minion Pro}
\babelFSstore{turkish}
\setmainfont{Minion Pro}
\babelFSfeatures{turkish}{Language=Turkish}
```


