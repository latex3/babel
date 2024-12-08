# Filipino

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Filipino language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `filipino` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[filipino]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Filipino

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-filipino.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.