# Luyia

This page offers basic guidance on typesetting a LaTeX document in the
Luyia language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `luyia` as the main language, with `luatex`.

```tex
\documentclass[luyia]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Luluhia

Today $=$ \today

\end{document}
```

![](../media/locale-luyia.png)