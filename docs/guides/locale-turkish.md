# Turkish

This page offers basic guidance on typesetting a LaTeX document in the
Turkish language using the Latin script.

## Support with the traditional way (`ldf`)

The Turkish language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-turkish](https://ctan.org/pkg/babel-turkish)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `turkish` as the main language, with `luatex`.

```tex
\documentclass[turkish]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Türkçe

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-turkish.png)