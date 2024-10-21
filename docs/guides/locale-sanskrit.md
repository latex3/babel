# Sanskrit

This page offers basic guidance on typesetting a LaTeX document in the
Sanskrit language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `sanskrit` as the main language, with `luatex`.

```tex
\documentclass[sanskrit]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-sanskrit.png)