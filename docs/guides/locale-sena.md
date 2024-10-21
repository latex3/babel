# Sena

This page offers basic guidance on typesetting a LaTeX document in the
Sena language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `sena` as the main language, with `luatex`.

```tex
\documentclass[sena]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ sena

Today $=$ \today

\end{document}
```

![](../media/locale-sena.png)