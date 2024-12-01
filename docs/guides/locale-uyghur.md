# Uyghur

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Uyghur language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `uyghur` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[uyghur]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}{FreeSerif}

\begin{document}

Local name $=$ ئۇيغۇرچە

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-uyghur.png)