# Phoenician

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Phoenician language using the Phoenician script.

## Support with `ini` locale file

Here is a minimal sample file with `phoenician` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[phoenician]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}{FreeSans}

\begin{document}

Local name $=$ 𐤃𐤁𐤓𐤉𐤌 𐤊𐤍𐤏𐤍𐤉𐤌

\end{document}
```

![](../media/locale-phoenician.png)