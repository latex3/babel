# Standard Moroccan Tamazight

This page offers basic guidance on typesetting a LaTeX document in the
Standard Moroccan Tamazight language using the Tifinagh script.

## Support with `ini` locale file

Here is a minimal sample file with `standardmoroccantamazight` as the main language, with `luatex`.

```tex
\documentclass[standardmoroccantamazight]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSans}

\begin{document}

Local name $=$ ⵜⴰⵎⴰⵣⵉⵖⵜ

Today $=$ \today

\end{document}
```

![](../media/locale-standardmoroccantamazight.png)