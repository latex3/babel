# Old, deprecated, and removed functions

## Fonts

A couple of tentative macros were provided by `babel` <3.9g with a
partial solution for “Unicode” fonts. Shortly after, with the
introduction of `\babelfont`, they were deprecated, and now, finally,
have been removed. A short description follows, for reference:
* `\babelFSstore{babel-language}` sets the current three   basic families (rm, sf, tt) as the default for the language given.
* `\babelFSdefault{babel-language}{fontspec-features}` patches `\fontspec` so that the given features are always passed as   the optional argument or added to it (not an ideal solution).
```tex
\setmainfont[Language=Turkish]{Minion Pro}
\babelFSstore{turkish}
\setmainfont{Minion Pro}
\babelFSfeatures{turkish}{Language=Turkish}
```
And the code, just in case you need it for some reason:
{% raw %}
```tex
\newcommand\babelFSstore[2][]{%
  \bbl@ifblank{#1}%
    {\bbl@csarg\def{sname@#2}{Latin}}%
    {\bbl@csarg\def{sname@#2}{#1}}%
  \bbl@provide@dirs{#2}%
  \bbl@csarg\ifnum{wdir@#2}>\z@
    \let\bbl@beforeforeign\leavevmode
    \EnableBabelHook{babel-bidi}%
  \fi
  \bbl@foreach{#2}{%
    \bbl@FSstore{##1}{rm}\rmdefault\bbl@save@rmdefault
    \bbl@FSstore{##1}{sf}\sfdefault\bbl@save@sfdefault
    \bbl@FSstore{##1}{tt}\ttdefault\bbl@save@ttdefault}}
\def\bbl@FSstore#1#2#3#4{%
  \bbl@csarg\edef{#2default#1}{#3}%
  \expandafter\addto\csname extras#1\endcsname{%
    \let#4#3%
    \ifx#3\f@family
      \edef#3{\csname bbl@#2default#1\endcsname}%
      \fontfamily{#3}\selectfont
    \else
      \edef#3{\csname bbl@#2default#1\endcsname}%
    \fi}%
  \expandafter\addto\csname noextras#1\endcsname{%
    \ifx#3\f@family
      \fontfamily{#4}\selectfont
    \fi
    \let#3#4}}
\let\bbl@langfeatures\@empty
\def\babelFSfeatures{% make sure \fontspec is redefined once
  \let\bbl@ori@fontspec\fontspec
  \renewcommand\fontspec[1][]{%
    \bbl@ori@fontspec[\bbl@langfeatures##1]}
  \let\babelFSfeatures\bbl@FSfeatures
  \babelFSfeatures}
\def\bbl@FSfeatures#1#2{%
  \expandafter\addto\csname extras#1\endcsname{%
    \babel@save\bbl@langfeatures
    \edef\bbl@langfeatures{#2,}}}
```
{% endraw %}



