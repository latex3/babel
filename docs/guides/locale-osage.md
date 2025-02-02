# Osage

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Osage language using the Osage script.

## Support with `ini` locale file

Here is a minimal sample file with `osage` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥25.2,
although it may work with previous versions).

Gadugi is a Windows font.

```tex
\documentclass[osage]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Gadugi}

\begin{document}

Local name $=$ 𐓏𐓘𐓻𐓘𐓻𐓟

Today $=$ \today

\end{document}
```

![](../media/locale-osage.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestions or request enhancements by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.