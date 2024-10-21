# Sundanese

This page offers basic guidance on typesetting a LaTeX document in the
Sundanese language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `sundanese` as the main language, with `luatex`.

```tex
\documentclass[sundanese]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Basa Sunda

Today $=$ \today

\end{document}
```

![](../media/locale-sundanese.png)