# Norwegian

The Norwegian language is available for `pdftex`, `xetex`, and `luatex`. An example
for `pdftex` with the UTF-8 encoding is:
```tex
\documentclass{book}

\usepackage[norsk]{babel}
\usepackage[T1]{fontenc}

\begin{document}

Alle menneske er fødde til fridom og med same menneskeverd og
menneskerettar. Dei har fått fornuft og samvit og skal leve med
kvarandre som brør.

\end{document}
```

With `luatex` and `xetex` remove the line:
```tex
\usepackage[T1]{fontenc}
```

Nynorsk is also available. Just write instead:
```tex
\usepackage[nynorsk]{babel}
```

## Hyphenation

A number of words (a few hundred) require adding a letter when
hyphenated. In `pdftex` and `xetex` they must be marked explicitly up
with a shorthand, like `volleyba"llandslag` (‘volleyballandslag’ →
‘volleyball-landslag’).

With `luatex` no explicit markup is required, because they can be
added to the exception list with:
```tex
\babelhyphenation[norsk]{vol-ley-ba{ll-}{l}{ll}ands-lag}
```
Here, the group `{ll-}{l}{ll}` is equivalent to a `\discretionary`.
Remember you must add every word (like, say, ‘volleyballandslaget’).

Alternatively, you may define a transform, which is more flexible, but
less efficient. For example:
```tex
\babelposthyphenation{norsk}{ vol|ley|ba()l()lands|la }{
  { no = l, pre = ll- }
}
```
This rule matches the sequence of characters and hyphenation points in
the second argument, which explains why the ending ‘g’ has not been
included —without it, ‘volleyballandslaget’ is also matched.

Furthermore, with transforms hyphenation points can by weighted with
different penalties, too, as explained in [Non-standard hyphenation
with
luatex](https://latex3.github.io/babel/guides/non-standard-hyphenation-with-luatex.html).

Feel free to contribute a list a words requiring this feature.

## Useful Links

* [babel-norsk in CTAN](https://ctan.org/pkg/babel-norsk)