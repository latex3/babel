# Galician

This page offers basic guidance on typesetting a LaTeX document in the
Galician language using the Latin script.

## Support with the traditional way (`ldf`)

The Galician language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-galician](https://ctan.org/pkg/babel-galician)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `galician` as the main language, with `luatex`.

```tex
\documentclass[galician]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ galego

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-galician.png)