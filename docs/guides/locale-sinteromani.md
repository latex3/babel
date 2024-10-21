# Sinte Romani

This page offers basic guidance on typesetting a LaTeX document in the
Sinte Romani language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `sinteromani` as the main language, with `luatex`.

```tex
\documentclass[sinteromani]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Sintitikes

\end{document}
```

![](../media/locale-sinteromani.png)