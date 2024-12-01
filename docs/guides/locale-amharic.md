# Amharic

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Amharic language using the Ethiopic script.

## Support with `ini` locale file

Here is a minimal sample file with `amharic` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[amharic]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{FreeSerif}

\begin{document}

Local name $=$ አማርኛ

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-amharic.png)