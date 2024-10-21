# Scottish Gaelic

This page offers basic guidance on typesetting a LaTeX document in the
Scottish Gaelic language using the Latin script.

## Support with the traditional way (`ldf`)

The Scottish Gaelic language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `scottishgaelic` as the main language, with `luatex`.

```tex
\documentclass[scottishgaelic]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Gàidhlig

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-scottishgaelic.png)