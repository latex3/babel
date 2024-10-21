# Latvian

This page offers basic guidance on typesetting a LaTeX document in the
Latvian language using the Latin script.

## Support with the traditional way (`ldf`)

The Latvian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-latvian](https://ctan.org/pkg/babel-latvian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `latvian` as the main language, with `luatex`.

```tex
\documentclass[latvian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ latviešu

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-latvian.png)