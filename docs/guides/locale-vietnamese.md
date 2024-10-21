# Vietnamese

This page offers basic guidance on typesetting a LaTeX document in the
Vietnamese language using the Latin script.

## Support with the traditional way (`ldf`)

The Vietnamese language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-vietnamese](https://ctan.org/pkg/babel-vietnamese)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `vietnamese` as the main language, with `luatex`.

```tex
\documentclass[vietnamese]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Tiếng Việt

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-vietnamese.png)