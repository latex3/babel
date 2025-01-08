# Syriac

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Syriac language using the Syriac script.

## Support with `ini` locale file

Here is a minimal sample file with `syriac` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

Segoe UI Historic is a Windows font, which renders correctly ligatures
and abbreviations. Many fonts don’t.

There is an example in the repository:
[tex](https://github.com/latex3/babel/blob/02a0a862d60a30f99541adf147a90ed2330aeac7/samples/lua-syriac.tex), [pdf](https://github.com/latex3/babel/blob/02a0a862d60a30f99541adf147a90ed2330aeac7/samples/lua-syriac.pdf).

```tex
\documentclass[syriac]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}{Segoe UI Historic}

\begin{document}

Local name $=$ ܠܫܢܐ ܣܘܪܝܝܐ

Today $=$ \today

\end{document}
```

![](../media/locale-syriac.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestions or request enhancements by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.