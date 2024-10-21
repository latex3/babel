# Langi

This page offers basic guidance on typesetting a LaTeX document in the
Langi language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `langi` as the main language, with `luatex`.

```tex
\documentclass[langi]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kɨlaangi

Today $=$ \today

\end{document}
```

![](../media/locale-langi.png)