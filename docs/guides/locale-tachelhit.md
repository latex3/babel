# Tachelhit

This page offers basic guidance on typesetting a LaTeX document in the
Tachelhit language using the Tifinagh script.

## Support with `ini` locale file

Here is a minimal sample file with `tachelhit` as the main language, with `luatex`.

```tex
\documentclass[tachelhit]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSans}

\begin{document}

Local name $=$ ⵜⴰⵛⵍⵃⵉⵜ

Today $=$ \today

\end{document}
```

![](../media/locale-tachelhit.png)