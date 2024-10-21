# Catalan

This page offers basic guidance on typesetting a LaTeX document in the
Catalan language using the Latin script.

## Support with the traditional way (`ldf`)

The Catalan language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-catalan](https://ctan.org/pkg/babel-catalan)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `catalan` as the main language, with `luatex`.

```tex
\documentclass[catalan]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ català

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-catalan.png)