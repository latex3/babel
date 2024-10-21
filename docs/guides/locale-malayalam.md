# Malayalam

This page offers basic guidance on typesetting a LaTeX document in the
Malayalam language using the Malayalam script.

## Support with `ini` locale file

Here is a minimal sample file with `malayalam` as the main language, with `luatex`.

```tex
\documentclass[malayalam]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ മലയാളം

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-malayalam.png)