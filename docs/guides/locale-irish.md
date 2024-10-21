# Irish

This page offers basic guidance on typesetting a LaTeX document in the
Irish language using the Latin script.

## Support with the traditional way (`ldf`)

The Irish language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-irish](https://ctan.org/pkg/babel-irish)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `irish` as the main language, with `luatex`.

```tex
\documentclass[irish]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Gaeilge

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-irish.png)