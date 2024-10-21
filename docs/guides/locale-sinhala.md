# Sinhala

This page offers basic guidance on typesetting a LaTeX document in the
Sinhala language using the Sinhala script.

## Support with `ini` locale file

Here is a minimal sample file with `sinhala` as the main language, with `luatex`.

```tex
\documentclass[sinhala]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ සිංහල

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-sinhala.png)