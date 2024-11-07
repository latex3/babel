# Bodo

This page offers basic guidance on typesetting a LaTeX document in the
Bodo language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `bodo` as the main language, with `luatex`.

```tex
\documentclass[bodo]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ बर’

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-bodo.png)