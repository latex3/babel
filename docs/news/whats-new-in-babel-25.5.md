# What's new in babel 25.5

2025-03-10

## Transforms

### Dutch ###

New transform `diaeresis.hyphen`. It removes the diaeresis above a
vowel if hyphenated just before.
  
### German ###

The new transform `longs.unifraktur` implements the basic heuristic
rules for the long s (ſ) from those in [Unifraktur
Maguntia](https://unifraktur.sourceforge.net/) (which are also used in
[Yannis Fraktur Regular](https://ctan.org/pkg/yfonts-otf)), excluding a
large set specific to this font. These fonts define them with the help
of contextual substitutions, but with this transform you can apply them
to fonts lacking native long s features.

Although discretionaries aren’t taken into account, the transform is
declared in the posthyphenation group, to ease if necessary fine tuning
the rules for, e.g., prefixes and compound words.

They are available in all German locales, even if they don’t make much
sense in some of them. Note the historical usage of the long s extends
beyond the Fraktur typeface, and can be also found in Antiqua styles.

An example follows (from Einstein). The font has been picked somewhat
randomly. It defines no substitutions, although includes some ligatures
in non-standard positions (‘ch’ in ‘<’, ‘ſt’ in ‘¥’, and so on), which I
haven’t fixed (it can be done partially with transforms).

```tex
\documentclass{article}

\usepackage[german]{babel}
\babelprovide[transforms=longs.unifraktur]{german}
\babelfont{rm}{Kabinett-Fraktur}

\begin{document}

Das Schönste, was wir erleben können, ist das Geheimnisvolle. Es ist
das Grundgefühl, das an der Wiege von wahrer Kunst und Wissenschaft
steht. Wer es nicht kennt und sich nicht wundern, nicht mehr staunen
kann, der ist sozusagen tot und sein Auge erloschen.

\end{document}
```
![](../media/fraktur-einstein.png)

According to Unicode: “Such stylistic distinctions [Fraktur and Gaelic]
are ignored in the Unicode Standard, which treats them as presentation
styles of the Latin script”. The reason is the scripts tags `Latf` and
`Latg` are aimed primarily at book cataloging. They are also not treated
as separate scripts in OpenType, which rely on ‘historical’ or ‘stylistic
set’ font features.

## Shorthand groups

Most languages declaring shorthands create just a group named as the
language. A few, however, use a different name. Now, when a
`\languageshorthands` is found, it prints (only once) to the log file
something like this:
```
Package babel Info: 'uppersorbian' activates 'usorbian' shorthands.
(babel)             Reported  on input line 8.
```

## Fixes

* Some wrong bidi text in `\hbox`.
* Extra space with pre/postpart and pre/postchapter captions and lazy loading. 
* LaTeX hook for newly defined font families.