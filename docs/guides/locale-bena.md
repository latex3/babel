# Bena

This page offers basic guidance on typesetting a LaTeX document in the
Bena language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `bena` as the main language, with `luatex`.

```tex
\documentclass[bena]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Hibena

Today $=$ \today

\end{document}
```

![](../media/locale-bena.png)