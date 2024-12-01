# Dutch

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a></em>.</p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Dutch language using the Latin script.

## Support with the traditional way (`ldf`)

The Dutch language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-dutch](https://ctan.org/pkg/babel-dutch)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `dutch` as the main language
(assuming `luatex`, which is the recommended engine, and `babel` ≥24.14,
although it may work with previous versions).

```tex
\documentclass[dutch]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Nederlands

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-dutch.png)