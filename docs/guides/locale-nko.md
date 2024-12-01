# N’Ko

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
N’Ko language using the N’Ko script.

## Support with `ini` locale file

Here is a minimal sample file with `nko` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[nko]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{DejaVu Sans}

\begin{document}

Local name $=$ ߒߞߏ

Today $=$ \today

\end{document}
```

![](../media/locale-nko.png)