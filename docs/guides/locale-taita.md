# Taita

This page offers basic guidance on typesetting a LaTeX document in the
Taita language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `taita` as the main language, with `luatex`.

```tex
\documentclass[taita]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kitaita

Today $=$ \today

\end{document}
```

![](../media/locale-taita.png)