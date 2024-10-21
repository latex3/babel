# Gothic

This page offers basic guidance on typesetting a LaTeX document in the
Gothic language using the Gothic script.

## Support with `ini` locale file

Here is a minimal sample file with `gothic` as the main language, with `luatex`.

```tex
\documentclass[gothic]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ 𐌲𐌿𐍄𐌹𐍃𐌺

\end{document}
```

![](../media/locale-gothic.png)