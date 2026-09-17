# Bodo

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Bodo language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `bodo` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥25.14,
although it may work with previous versions).

```tex
\documentclass[bodo]{article}

\usepackage{babel}

\babelfont{rm}{Shobhika}

\begin{document}

Local name $=$ बर’

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-bodo.png)

## Calendar

The Indian National Calendar, named `indian`, is supported (`luatex` and
`xetex`). Here is an example setting `indian` as the default
calendar for `\today`.
```tex
\documentclass{article}

% Set a fixed day for this example
\year=2026 \month=8 \day=15

\usepackage[bodo, provide={calendar=indian}]{babel}
\babelfont{rm}{Shobhika}

\begin{document}

\today

\end{document}
```

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.