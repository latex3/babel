# Low German

This page offers basic guidance on typesetting a LaTeX document in the
Low German language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `lowgerman` as the main language, with `luatex`.

```tex
\documentclass[lowgerman]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Neddersass’sch

Today $=$ \today

\end{document}
```

![](../media/locale-lowgerman.png)