# Bhojpuri

This page offers basic guidance on typesetting a LaTeX document in the
Bhojpuri language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `bhojpuri` as the main language, with `luatex`.

```tex
\documentclass[bhojpuri]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ भोजपुरी

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-bhojpuri.png)