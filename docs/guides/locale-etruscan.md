# Etruscan

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Etruscan language using the Old Italic script.

## Support with `ini` locale file

Here is a minimal sample file with `etruscan` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥25.2,
although it may work with previous versions).

Segoe UI Historic is a Windows font.

```tex
\documentclass[etruscan]{article}

\usepackage{babel}

\babelfont{rm}{Segoe UI Historic}

\begin{document}

Local name $=$ 𐌌𐌄𐌀𐌉𐌂𐌔𐌖 𐌓𐌄𐌀𐌔𐌍𐌄

Sample characters = 𐌀𐌌𐌘𐌢𐌎𐌚𐌙𐌞

\end{document}
```

![](../media/locale-etruscan.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestions or request enhancements by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.