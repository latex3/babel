# Wolaytta

This page offers basic guidance on typesetting a LaTeX document in the
Wolaytta language using the Ethiopic script.

## Support with `ini` locale file

Here is a minimal sample file with `wolaytta` as the main language, with `luatex`.

```tex
\documentclass[wolaytta]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ወላይታቱ

Today $=$ \today

\end{document}
```

![](../media/locale-wolaytta.png)