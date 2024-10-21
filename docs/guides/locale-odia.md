# Odia

This page offers basic guidance on typesetting a LaTeX document in the
Odia language using the Oriya script.

## Support with `ini` locale file

Here is a minimal sample file with `odia` as the main language, with `luatex`.

```tex
\documentclass[odia]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ଓଡ଼ିଆ

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-odia.png)