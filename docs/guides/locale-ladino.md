# Ladino

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Ladino language using the Hebrew script.

## Support with `ini` locale file

Here is a minimal sample file with `ladino` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[ladino]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ Ladino

\end{document}
```

![](../media/locale-ladino.png)