# Dogri

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Dogri language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `dogri` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[dogri]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Shobhika}

\begin{document}

Local name $=$ डोगरी

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-dogri.png)