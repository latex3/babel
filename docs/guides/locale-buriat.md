# Buriat

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Buriat language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `buriat` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[buriat]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ Буряад

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-buriat.png)