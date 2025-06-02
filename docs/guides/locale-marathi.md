# Marathi

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Marathi">Search this site for more on Marathi</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Marathi language using the Devanagari script.

You may be also interested in the
[marathi](https://ctan.org/pkg/marathi) package.

## Support with `ini` locale file

Here is a minimal sample file with `marathi` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[marathi]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Shobhika}

\begin{document}

Local name $=$ मराठी

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-marathi.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.