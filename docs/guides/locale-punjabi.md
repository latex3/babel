# Punjabi

This page offers basic guidance on typesetting a LaTeX document in the
Punjabi language using the Gurmukhi script.

## Support with `ini` locale file

Here is a minimal sample file with `punjabi` as the main language, with `luatex`.

```tex
\documentclass[punjabi]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ਪੰਜਾਬੀ

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-punjabi.png)