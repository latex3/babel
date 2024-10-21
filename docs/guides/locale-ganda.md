# Ganda

This page offers basic guidance on typesetting a LaTeX document in the
Ganda language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `ganda` as the main language, with `luatex`.

```tex
\documentclass[ganda]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Luganda

Today $=$ \today

\end{document}
```

![](../media/locale-ganda.png)