# Gothic

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Gothic language using the Gothic script.

## Support with `ini` locale file

Here is a minimal sample file with `gothic` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[gothic]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{FreeSerif}

\begin{document}

Local name $=$ 𐌲𐌿𐍄𐌹𐍃𐌺

\end{document}
```

![](../media/locale-gothic.png)