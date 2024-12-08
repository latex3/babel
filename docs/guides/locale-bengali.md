# Bangla

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a
  href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a
  href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Bangla">Search this site for more on Bangla</a>.</em></p>
</blockquote>

For the Bangla or Bengali language, the `Harfbuzz` renderer in `luatex`
is recommended. Here is a minimal example:
```tex
\documentclass{article}

\usepackage[bangla, provide=*]{babel}
\babelfont{rm}{FreeSerif}

\begin{document}

বাংলা ভাষা বিকাশের ইতিহাস ১৩০০ বছর পুরনো। চর্যাপদ এ ভাষার আদি নিদর্শন।

\end{document}
```
![](../media/bengali-sample-luatex.png)

(In versions <24.14 you should activate explicitly the Harfbuzz
renderer.)

It works with `xetex`, too, with a similar output, but with this engine
there is no need the set the renderer (it’s always Harfbuzz).

## Counters

Although Bangla numerals are best entered directly in its original
form, you may still need some conversion because LaTeX uses internally
the Arabic ones. With `luatex` there are two ways to map Arabic to
Bangla numerals, passed as option to `\babelprovide`:
* `maparabic` does it at the TeX level, by redefining `\arabic`. Note
  the form written to the auxiliary files is the converted one (which
  can be an issue in indexes). It works with `xetex`, too.
* `mapdigits` does it at the engine level. This is
  usually the preferred method.

To perform this conversión, use the following preamble:
```tex
\usepackage[bangla, provide=*]{babel}
\babelprovide[mapdigits]{bangla}  % or alternatively maparabic
\babelfont{rm}{FreeSerif}
```

There is an additional counter:
* `alphabetic` ▸ ক খ গ ঘ ঙ চ ছ জ ঝ ঞ ট ঠ ড ঢ ণ ত থ দ ধ ন প ফ ব ভ

See the explanation in the babel manual about `\localecounter` and
`localenumeral`.

## Punctuation

_Only luatex_. The transform `danda.nobreak` prevents a line break
before a danda or double danda if there is a space.

In Unicode, danda and double danda are shared by several scripts, and
`babel` doesn’t assign them by default to any of them. If you are using
`onchar` to select the font you may want to assign them with:
```tex
\babelcharproperty{`।}{locale}{bangla}
\babelcharproperty{`॥}{locale}{bangla}
```

## Useful links

* [How to write Bengali in LaTeX?](https://tex.stackexchange.com/a/561540/5735)
* [Change numbering style to Bengali in nested ordered list](https://tex.stackexchange.com/a/563725/5735)
* [What is the best way to write Bangla in latex?](https://tex.stackexchange.com/questions/620543/what-is-the-best-way-to-write-bangla-in-latex/620546#620546)
* [Typesetting Bangla script with LuaLATEX](https://www.latex-project.org/publications/UFi-TUB-tb127fischer-bangla.pdf)
