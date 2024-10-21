# Egyptian Arabic

This page offers basic guidance on typesetting a LaTeX document in the
Egyptian Arabic language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `egyptianarabic` as the main language, with `luatex`.

```tex
\documentclass[egyptianarabic]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ مصرى

\end{document}
```

![](../media/locale-egyptianarabic.png)