# Konkani

This page offers basic guidance on typesetting a LaTeX document in the
Konkani language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `konkani` as the main language, with `luatex`.

```tex
\documentclass[konkani]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ कोंकणी

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-konkani.png)