# Metaʼ

This page offers basic guidance on typesetting a LaTeX document in the
Metaʼ language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `meta` as the main language, with `luatex`.

```tex
\documentclass[meta]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ metaʼ

Today $=$ \today

\end{document}
```

![](../media/locale-meta.png)