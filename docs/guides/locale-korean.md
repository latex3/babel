# Korean

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Korean">Search this site for more on Korean</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Korean language using the Korean script.

## Support with `ini` locale file

Here is a minimal sample file with `korean` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[korean]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Un Batang}

\begin{document}

Local name $=$ 한국어

Preface $=$ \prefacename

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-korean.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.