# Silesian

This page offers basic guidance on typesetting a LaTeX document in the
Silesian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `silesian` as the main language, with `luatex`.

```tex
\documentclass[silesian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ ślōnski

Today $=$ \today

\end{document}
```

![](../media/locale-silesian.png)