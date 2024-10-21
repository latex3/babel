# Ladino

This page offers basic guidance on typesetting a LaTeX document in the
Ladino language using the Hebrew script.

## Support with `ini` locale file

Here is a minimal sample file with `ladino` as the main language, with `luatex`.

```tex
\documentclass[ladino]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{NewComputerModern10}

\begin{document}

Local name $=$ Ladino

\end{document}
```

![](../media/locale-ladino.png)