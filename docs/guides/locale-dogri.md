# Dogri

This page offers basic guidance on typesetting a LaTeX document in the
Dogri language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `dogri` as the main language, with `luatex`.

```tex
\documentclass[dogri]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ डोगरी

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-dogri.png)