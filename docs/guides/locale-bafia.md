# Bafia

This page offers basic guidance on typesetting a LaTeX document in the
Bafia language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `bafia` as the main language, with `luatex`.

```tex
\documentclass[bafia]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ rikpa

Today $=$ \today

\end{document}
```

![](../media/locale-bafia.png)