# Tamil

This page offers basic guidance on typesetting a LaTeX document in the
Tamil language using the Tamil script.

## Support with `ini` locale file

Here is a minimal sample file with `tamil` as the main language, with `luatex`.

```tex
\documentclass[tamil]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ தமிழ்

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-tamil.png)