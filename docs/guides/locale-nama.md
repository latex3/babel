# Nama

This page offers basic guidance on typesetting a LaTeX document in the
Nama language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `nama` as the main language, with `luatex`.

```tex
\documentclass[nama]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Khoekhoegowab

Today $=$ \today

\end{document}
```

![](../media/locale-nama.png)