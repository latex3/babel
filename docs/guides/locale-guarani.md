# Guarani

This page offers basic guidance on typesetting a LaTeX document in the
Guarani language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `guarani` as the main language, with `luatex`.

```tex
\documentclass[guarani]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ avañe’ẽ

Today $=$ \today

\end{document}
```

![](../media/locale-guarani.png)