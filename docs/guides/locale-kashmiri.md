# Kashmiri

This page offers basic guidance on typesetting a LaTeX document in the
Kashmiri language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `kashmiri` as the main language, with `luatex`.

```tex
\documentclass[kashmiri]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ کٲشُر

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-kashmiri.png)