# Hindi

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a
  href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Hindi">Search this site for more on Hindi</a>.</em></p>
</blockquote>

This page provides guidance on typesetting LaTeX documents in the Hindi
language using the Devanagari script.

Here is a minimal document using `lualatex`, which is currently the
recommended engine (although it also works in `xelatex`).

```tex
\documentclass{article}

\usepackage[hindi, provide=*]{babel}
\babelfont{rm}{Shobhika}

\begin{document}

हिन्दी शब्द का सम्बन्ध संस्कृत शब्द ‘सिन्धु’ से माना जाता है।

\end{document}
```
![](../media/hindi-sample-luatex.png)

(In versions <24.14 and `lualatex` you should activate explicitly the Harfbuzz
renderer.)

You can watch the following video:

<iframe width="560" height="315" src="https://www.youtube.com/embed/fKHEBjav7C4?si=3xDP3Xapzc7RyCV3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

As a complement, see [LaTeX – Indic languages (with lazy
loading)](https://www.youtube.com/watch?v=ykvTy2rm1og).

## Counters

Although Hindi numerals are best entered directly in its original
form, you may still need some conversion because LaTeX uses internally
the Arabic ones. With `luatex` there are two ways to map Arabic to
Hindi numerals, passed as option to `\babelprovide`:
* `maparabic` does it at the TeX level, by redefining `\arabic`. Note
  the form written to the auxiliary files is the converted one. It works
  with `xetex`, too.
* `mapdigits` does it at the engine level. This is usually the preferred
  method.
  
To perform this conversión, use the following preamble:
```tex
\usepackage[hindi, provide=*]{babel}
\babelprovide[mapdigits]{hindi}  % or alternatively maparabic
\babelfont{rm}{FreeSerif}
```

There is an additional counter:
* `alphabetic` क ख ग घ ङ च छ ज झ ञ ट ठ ड ढ ण त थ द ध न प फ ब भ म य र ल व श ष स ह

See the explanation in the babel manual about `\localecounter` and
`localenumeral`.

## Punctuation

_Only luatex_. The transform `punctuation.space` inserts a space before
the following four characters: `!?:;`.

The transform `danda.nobreak` prevents a line break before a danda or
double danda if there is a space.

In Unicode, danda and double danda are shared by several scripts, and
`babel` doesn’t assign them by default to any of them. If you are using
`onchar` to select the font automatically in the text you may want to
assign them with:
```tex
\babelcharproperty{`।}{locale}{hindi}
\babelcharproperty{`॥}{locale}{hindi}
```

## Transliterations

_Only luatex_. There is are transforms for the Harvard-Kyoto
system (`transliteration.hk`) and IAST (`transliteration.iast`)

