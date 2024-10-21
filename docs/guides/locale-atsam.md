# Atsam

This page offers basic guidance on typesetting a LaTeX document in the
Atsam language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `atsam` as the main language, with `luatex`.

```tex
\documentclass[atsam]{article}

\usepackage[provide=*]{babel}

\begin{document}

Today $=$ \today

\end{document}
```

![](../media/locale-atsam.png)