# Romansh

This page offers basic guidance on typesetting a LaTeX document in the
Romansh language using the Latin script.

## Support with the traditional way (`ldf`)

The Romansh language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-romansh](https://ctan.org/pkg/babel-romansh)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `romansh` as the main language, with `luatex`.

```tex
\documentclass[romansh]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ rumantsch

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-romansh.png)