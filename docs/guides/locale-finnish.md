# Finnish

This page offers basic guidance on typesetting a LaTeX document in the
Finnish language using the Latin script.

## Support with the traditional way (`ldf`)

The Finnish language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-finnish](https://ctan.org/pkg/babel-finnish)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `finnish` as the main language, with `luatex`.

```tex
\documentclass[finnish]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ suomi

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-finnish.png)