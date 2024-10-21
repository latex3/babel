# Old Norse

This page offers basic guidance on typesetting a LaTeX document in the
Old Norse language using the Runic script.

## Support with `ini` locale file

Here is a minimal sample file with `oldnorse` as the main language, with `luatex`.

```tex
\documentclass[oldnorse]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeMono}

\begin{document}

Local name $=$ norrǿnt mál

\end{document}
```

![](../media/locale-oldnorse.png)