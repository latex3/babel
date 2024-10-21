# Saraiki

This page offers basic guidance on typesetting a LaTeX document in the
Saraiki language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `saraiki` as the main language, with `luatex`.

```tex
\documentclass[saraiki]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ سرائیکی

\end{document}
```

![](../media/locale-saraiki.png)