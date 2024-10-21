# N’Ko

This page offers basic guidance on typesetting a LaTeX document in the
N’Ko language using the N’Ko script.

## Support with `ini` locale file

Here is a minimal sample file with `nko` as the main language, with `luatex`.

```tex
\documentclass[nko]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{DejaVu Sans}

\begin{document}

Local name $=$ ߒߞߏ

Today $=$ \today

\end{document}
```

![](../media/locale-nko.png)