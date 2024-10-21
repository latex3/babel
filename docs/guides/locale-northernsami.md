# Northern Sami

This page offers basic guidance on typesetting a LaTeX document in the
Northern Sami language using the Latin script.

## Support with the traditional way (`ldf`)

The Northern Sami language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `northernsami` as the main language, with `luatex`.

```tex
\documentclass[northernsami]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ davvisámegiella

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-northernsami.png)