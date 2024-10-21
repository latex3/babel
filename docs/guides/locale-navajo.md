# Navajo

This page offers basic guidance on typesetting a LaTeX document in the
Navajo language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `navajo` as the main language, with `luatex`.

```tex
\documentclass[navajo]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Diné Bizaad

\end{document}
```

![](../media/locale-navajo.png)