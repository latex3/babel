# Danish

This page offers basic guidance on typesetting a LaTeX document in the
Danish language using the Latin script.

## Support with the traditional way (`ldf`)

The Danish language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-danish](https://ctan.org/pkg/babel-danish)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `danish` as the main language, with `luatex`.

```tex
\documentclass[danish]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ dansk

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-danish.png)