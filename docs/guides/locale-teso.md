# Teso

This page offers basic guidance on typesetting a LaTeX document in the
Teso language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `teso` as the main language, with `luatex`.

```tex
\documentclass[teso]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kiteso

Today $=$ \today

\end{document}
```

![](../media/locale-teso.png)