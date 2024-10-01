# Old, deprecated, and removed functions

## Removed from the manual

Some functions where introduced years ago because they made sense
at their time. However, LaTeX has evolved and currently they are of
limited interest, and therefore their description has been moved here,
for not to clutter the manual.

### `strings`

Package option with a value. Selects the encoding of
strings in languages supporting this feature. Predefined labels are
`generic` (for traditional TeX, LICR and ASCII strings), `unicode` (for
engines like `xetex` and `luatex`) and `encoded` (for special cases
requiring mixed encodings). Other allowed values are font encoding
codes (`T1`, `T2A`, `LGR`, `L7X`...), but only in languages supporting
them. Be aware with `encoded` captions are protected, but they work in
`\MakeUppercase` and the like (this feature misuses some internal LaTeX
tools, so use it only as a last resort).

### `mapfont=direction`

Option in `\babelprovide`. Assigns the font for
the writing direction of this language (only with `bidi=basic`).
Instead of this option use `onchar`, based on the script. More
precisely, what `mapfont=direction` means is, ‘when a character has the
same direction as the script for the “provided” language, then change
its font to that set for this language’. There are 3 directions,
following the bidi Unicode algorithm, namely, Arabic-like, Hebrew-like
and left to right. So, there should be at most 3 directives of this
kind. The only value is `direction`, and this option won’t be developed
any further.

### `\aliasshorthand`

If one prefers for example to use the character `/` over `"` in typing
Polish texts, this can be achieved by entering `\aliasshorthand{"}{/}`.

One of the reasons for the deprecation is shorthands remember somehow
the original character, and the fallback value is that of the latter.
So, in `\aliasshorthand{~}{^}`, if no shorthand is found, `^` expands
to a non-breaking space, because this is the value of `~` (internally,
`^` still calls `\active@char~` or `\normal@char~`). Furthermore, if
you change the `system` value of `^` with `\defineshorthand` nothing
happens.

### `\substitutefontfamily`

This command takes three arguments, a font encoding and two font family
names. It creates a font description file for the first font in the
given encoding. This `.fd` file will instruct LaTeX to use a font from
the second family when a font from the first family in the given
encoding seems to be needed.

## `ensureinfo=off`

\New{3.75} Previous to 3.75, `ini` files were loaded only with
`\babelprovide` and also when languages are selected if there is a
`\babelfont` or they have not been explicitly declared. Now the `ini`
files are loaded (and therefore the corresponding data) even if these
two conditions are not met (in previous versions you had to enable it
with `\BabelEnsureInfo` in the preamble). Because of the way this
feature works, problems are very unlikely, but there is switch as a
package option to turn the new behavior off (`ensureinfo=off`).

## `captions=`

This option was introduced long ago to deal with `ldf` files with LICR
strings, which where not fully supported in Unicode engines. Now it’s
unnecessary.

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
And the code, in case you need it for some reason:
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
