# Tigre

This page offers basic guidance on typesetting a LaTeX document in the
Tigre language using the Ethiopic script.

## Support with `ini` locale file

Here is a minimal sample file with `tigre` as the main language, with `luatex`.

```tex
\documentclass[tigre]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ትግረ

Today $=$ \today

\end{document}
```

![](../media/locale-tigre.png)