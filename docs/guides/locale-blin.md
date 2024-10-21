# Blin

This page offers basic guidance on typesetting a LaTeX document in the
Blin language using the Ethiopic script.

## Support with `ini` locale file

Here is a minimal sample file with `blin` as the main language, with `luatex`.

```tex
\documentclass[blin]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ብሊን

Today $=$ \today

\end{document}
```

![](../media/locale-blin.png)