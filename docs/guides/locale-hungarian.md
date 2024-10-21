# Hungarian

This page offers basic guidance on typesetting a LaTeX document in the
Hungarian language using the Latin script.

## Support with the traditional way (`ldf`)

The Hungarian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `hungarian` as the main language, with `luatex`.

```tex
\documentclass[hungarian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ magyar

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-hungarian.png)