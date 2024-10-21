# Jju

This page offers basic guidance on typesetting a LaTeX document in the
Jju language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `jju` as the main language, with `luatex`.

```tex
\documentclass[jju]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kaje

Today $=$ \today

\end{document}
```

![](../media/locale-jju.png)