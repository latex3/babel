# Nepali

This page offers basic guidance on typesetting a LaTeX document in the
Nepali language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `nepali` as the main language, with `luatex`.

```tex
\documentclass[nepali]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ नेपाली

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-nepali.png)