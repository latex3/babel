# Rajasthani

This page offers basic guidance on typesetting a LaTeX document in the
Rajasthani language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `rajasthani` as the main language, with `luatex`.

```tex
\documentclass[rajasthani]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ राजस्थानी

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-rajasthani.png)