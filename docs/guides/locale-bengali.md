# Bengali

For the Bengali or Bangla language, the `Harfbuzz` renderer in `luatex`
is recommended. Here is a minimal example:
```tex
\documentclass{article}

\usepackage[bengali, provide=*]{babel}
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

বাংলা ভাষা বিকাশের ইতিহাস ১৩০০ বছর পুরনো। চর্যাপদ এ ভাষার আদি নিদর্শন।

\end{document}
```
![](../media/bengali-sample-luatex.png)

It works with `xetex`, too, with a similar output, but with this engine
there is no need the set the renderer (it’s always Harfbuzz).

## Counters

Although Bengali numerals are best entered directly in its original
form, you may still need some conversion because LaTeX uses internally
the Arabic ones. With `luatex` there are two ways to map Arabic to
Bengali numerals, passed as option to `\babelprovide`:
* `maparabic` does it at the TeX level, by redefining `\arabic`. Note
  form written to the auxiliary files is the converted one. It works
  with `xetex`, too.
* `mapdigits` does it at the engine level. This is
  usually the preferred method.
  
To perform this conversión, use the following preamble:
```tex
\usepackage[bengali, provide=*]{babel}
\babelprovide[mapdigits]{bengali}  % or alternatively maparabic
\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}
```

There is an additional counter:
* `alphabetic` ▸ ক খ গ ঘ ঙ চ ছ জ ঝ ঞ ট ঠ ড ঢ ণ ত থ দ ধ ন প ফ ব ভ

See the explanation in the babel manual about `\localecounter` and
`localenumeral`.

## Punctuation

_Only luatex_. The transform `danda.nobreak` prevents a line break
before a danda or double danda if there is a space.


## Useful links

* [How to write Bengali in LaTeX?](https://tex.stackexchange.com/a/561540/5735)
* [Change numbering style to Bengali in nested ordered
  list](https://tex.stackexchange.com/a/563725/5735)
* [Typesetting Bangla script with LuaLATEX](https://www.latex-project.org/publications/UFi-TUB-tb127fischer-bangla.pdf)
