# Ewe

This page offers basic guidance on typesetting a LaTeX document in the
Ewe language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `ewe` as the main language, with `luatex`.

```tex
\documentclass[ewe]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Eʋegbe

Today $=$ \today

\end{document}
```

![](../media/locale-ewe.png)