# What's new in babel 26.11

2026-08-21

## Chinese counters

Two new counters has been added to Chinese, which are locale-dependent
(simplified and traditional). They are named `informal` and `formal`,
and correspond to the [CSS counters
](https://www.w3.org/TR/css-counter-styles-3/#limited-chinese) named
`simp-chinese-informal`, `simp-chinese-formal`,
`trad-chinese-informal`, `trad-chinese-formal`.

They are used like other localized counters; e.g.,
`\localenumeral{informal}{23}`. As other counters defined via `ini`
files, their range is 1-9999 (0 is also allowed) and they are fully
expandable if in range. Remember in dates there is a special syntax
(see the manual): `[d|informal]` means the day in the `informal`
counter. They are available in `xetex` and `luatex`.

For a different solution, have a look at
[`zhnumber`](https://ctan.org/pkg/zhnumber?lang=en).

_Technical note._ The new counters are declared in the `ini` files with
the special suffixes `D` (digits 1 to 9) and `C` (complementary) as
illustrated:
```ini
informal.D = 一 二 三 四 五 六 七 八 九
informal.C = 零 负 十 百 千
```
Items are separated with spaces and the complementary characters
follow this order: zero, negative (currently unused), tens, hundreds,
thousands.

## Indian calendar

The official Indian National Calendar (Saka era) is now available in
the following locales, for `xelatex` and `lualatex`:

[Assamese](https://latex3.github.io/babel/guides/locale-assamese.html),
[Bodo](https://latex3.github.io/babel/guides/locale-bodo.html),
[Gujarati](https://latex3.github.io/babel/guides/locale-gujarati.html),
[Hindi](https://latex3.github.io/babel/guides/locale-hindi.html),
[Kangri](https://latex3.github.io/babel/guides/locale-kangri.html),
[Kannada](https://latex3.github.io/babel/guides/locale-kannada.html),
[Kashmiri](https://latex3.github.io/babel/guides/locale-kashmiri.html),
[Konkani](https://latex3.github.io/babel/guides/locale-konkani.html),
[Maithili](https://latex3.github.io/babel/guides/locale-maithili.html),
[Malayalam](https://latex3.github.io/babel/guides/locale-malayalam.html),
[Marathi](https://latex3.github.io/babel/guides/locale-marathi.html),
[Odia](https://latex3.github.io/babel/guides/locale-odia.html),
[Punjabi](https://latex3.github.io/babel/guides/locale-punjabi.html),
[Tamil](https://latex3.github.io/babel/guides/locale-tamil.html),
[Telugu](https://latex3.github.io/babel/guides/locale-telugu.html)

Here is an example, which sets it as the default calendar. It prints
‘२४ श्रावण १९४८’:
```tex
\documentclass{article}

\year=2026 \month=8 \day=15

\usepackage[hindi, provide={mapdigits, calendar=indian}]{babel}
\babelfont{rm}{Mukta}

\begin{document}

\today

\end{document}
```

This feature will be extended to other locales in a future release.

## Fixes

* The syntax `\AddToHook{babel/*/<event>}` was not working correctly.
* Locales could be repeated in `\LocaleForEach`. 
