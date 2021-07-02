# Hindi

For the Hindi language —with the Devanagari script— the `Harfbuzz` renderer in `luatex`
is recommended. Here is a minimal example:
```tex
\documentclass{article}

\usepackage[hindi, provide=*]{babel}
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

हिन्दी शब्द का सम्बन्ध संस्कृत शब्द 'सिन्धु' से माना जाता है।

\end{document}
```
![](../media/hindi-sample-luatex.png)

It works with `xetex`, too, with a similar output, but with this engine
there is no need the set the renderer (it’s always Harfbuzz).

## Counters

Although Hindi numerals are best entered directly in its original
form, you may still need some conversion because LaTeX uses internally
the Arabic ones. With `luatex` there are two ways to map Arabic to
Hindi numerals, passed as option to `\babelprovide`:
* `maparabic` does it at the TeX level, by redefining `\arabic`. Note
  form written to the auxiliary files is the converted one. It works
  with `xetex`, too.
* `mapdigits` does it at the engine level. This is
  usually the preferred method.
  
To perform this conversión, use the following preamble:
```tex
\usepackage[hindi, provide=*]{babel}
\babelprovide[mapdigits]{hindi}  % or alternatively maparabic
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}
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

## Transliterations

_Only luatex_. There is a transform (`transliteration.hk`) for the Harvard-Kyoto
system.

