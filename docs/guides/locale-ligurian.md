# Ligurian

This page offers basic guidance on typesetting a LaTeX document in the
Ligurian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `ligurian` as the main language, with `luatex`.

```tex
\documentclass[ligurian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ ligure

Today $=$ \today

\end{document}
```

![](../media/locale-ligurian.png)