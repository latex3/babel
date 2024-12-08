# Northern Sami

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Northern Sami language using the Latin script.

## Support with the traditional way (`ldf`)

The Northern Sami language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.See [babel-samin](https://ctan.org/pkg/babel-samin) for further details.

## Support with `ini` locale file

Here is a minimal sample file with `northernsami` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[northernsami]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ davvisámegiella

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-northernsami.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.