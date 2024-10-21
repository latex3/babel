# Tai Nüa

This page offers basic guidance on typesetting a LaTeX document in the
Tai Nüa language using the Tai Le script.

## Support with `ini` locale file

Here is a minimal sample file with `tainua` as the main language, with `luatex`.

```tex
\documentclass[tainua]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ᥖᥭᥰ ᥘᥫᥴ

\end{document}
```

![](../media/locale-tainua.png)