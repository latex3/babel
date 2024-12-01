# Cantonese

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Cantonese language using the Traditional script.

## Support with `ini` locale file

Here is a minimal sample file with `cantonese` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[cantonese]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Noto Serif CJK TC}

\begin{document}

Local name $=$ 粵語

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-cantonese.png)

You may need download the font or replace it with another one in your
system.