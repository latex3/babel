# Colognian

This page offers basic guidance on typesetting a LaTeX document in the
Colognian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `colognian` as the main language, with `luatex`.

```tex
\documentclass[colognian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kölsch

Today $=$ \today

\end{document}
```

![](../media/locale-colognian.png)