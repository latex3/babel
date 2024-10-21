# Awadhi

This page offers basic guidance on typesetting a LaTeX document in the
Awadhi language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `awadhi` as the main language, with `luatex`.

```tex
\documentclass[awadhi]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ अवधी

\end{document}
```

![](../media/locale-awadhi.png)