# Sichuan Yi

This page offers basic guidance on typesetting a LaTeX document in the
Sichuan Yi language using the Yi script.

## Support with `ini` locale file

Here is a minimal sample file with `sichuanyi` as the main language, with `luatex`.

```tex
\documentclass[sichuanyi]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FandolSong}

\begin{document}

Local name $=$ ꆈꌠꉙ

Today $=$ \today

\end{document}
```

![](../media/locale-sichuanyi.png)