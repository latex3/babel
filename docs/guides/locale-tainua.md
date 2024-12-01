# Tai Nüa

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Tai Nüa language using the Tai Le script.

## Support with `ini` locale file

Here is a minimal sample file with `tainua` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[tainua]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{FreeSerif}

\begin{document}

Local name $=$ ᥖᥭᥰ ᥘᥫᥴ

\end{document}
```

![](../media/locale-tainua.png)