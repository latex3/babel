# Meru

This page offers basic guidance on typesetting a LaTeX document in the
Meru language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `meru` as the main language, with `luatex`.

```tex
\documentclass[meru]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kĩmĩrũ

Today $=$ \today

\end{document}
```

![](../media/locale-meru.png)