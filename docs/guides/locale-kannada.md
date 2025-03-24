# Kannada

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Kannada">Search this site for more on Kannada</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Kannada language using the Kannada script.

## Support with `ini` locale file

Here is a minimal sample file with `kannada` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥25.2,
although it may work with previous versions).

```tex
\documentclass[kannada]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Noto Serif Kannada}

\begin{document}

Local name $=$ ಕನ್ನಡ

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-kannada.png)
You may need download the font or replace it with another one in your
system.

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestions or request enhancements by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.