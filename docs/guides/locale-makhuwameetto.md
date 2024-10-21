# Makhuwa-Meetto

This page offers basic guidance on typesetting a LaTeX document in the
Makhuwa-Meetto language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `makhuwameetto` as the main language, with `luatex`.

```tex
\documentclass[makhuwameetto]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Makua

Today $=$ \today

\end{document}
```

![](../media/locale-makhuwameetto.png)