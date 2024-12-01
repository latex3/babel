# Limbu

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Limbu language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `limbu` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[limbu]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Shobhika}

\begin{document}

Local name $=$ लिम्बु भाषा

\end{document}
```

![](../media/locale-limbu.png)