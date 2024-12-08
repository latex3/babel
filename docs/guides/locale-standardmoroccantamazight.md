# Standard Moroccan Tamazight

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Standard Moroccan Tamazight language using the Tifinagh script.

## Support with `ini` locale file

Here is a minimal sample file with `standardmoroccantamazight` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[standardmoroccantamazight]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{FreeSans}

\begin{document}

Local name $=$ ⵜⴰⵎⴰⵣⵉⵖⵜ

Today $=$ \today

\end{document}
```

![](../media/locale-standardmoroccantamazight.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.