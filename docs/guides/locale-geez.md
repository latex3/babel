# Geez

This page offers basic guidance on typesetting a LaTeX document in the
Geez language using the Ethiopic script.

## Support with `ini` locale file

Here is a minimal sample file with `geez` as the main language, with `luatex`.

```tex
\documentclass[geez]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ግዕዝኛ

Today $=$ \today

\end{document}
```

![](../media/locale-geez.png)