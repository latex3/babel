# Swiss German

This page offers basic guidance on typesetting a LaTeX document in the
Swiss German language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `swissgerman` as the main language, with `luatex`.

```tex
\documentclass[swissgerman]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Schwiizertüütsch

Today $=$ \today

\end{document}
```

![](../media/locale-swissgerman.png)