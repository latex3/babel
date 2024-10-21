# Lombard

This page offers basic guidance on typesetting a LaTeX document in the
Lombard language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `lombard` as the main language, with `luatex`.

```tex
\documentclass[lombard]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ lombard

\end{document}
```

![](../media/locale-lombard.png)