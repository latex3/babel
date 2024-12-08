# Japanese

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Japanese">Search this site for more on Japanese</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Japanese language using the Japanese script.

## Support with the traditional way (`ldf`)

The Japanese language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.See [babel-japanese](https://ctan.org/pkg/babel-japanese) for further details.

## Support with `ini` locale file

Here is a minimal sample file with `japanese` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[japanese]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Harano Aji Mincho}

\begin{document}

Local name $=$ 日本語

Preface $=$ \prefacename

Today $=$ \today

\end{document}
```

![](../media/locale-japanese.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.