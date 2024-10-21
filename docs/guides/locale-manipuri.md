# Manipuri

This page offers basic guidance on typesetting a LaTeX document in the
Manipuri language using the Bengali script.

## Support with `ini` locale file

Here is a minimal sample file with `manipuri` as the main language, with `luatex`.

```tex
\documentclass[manipuri]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ মৈতৈলোন্

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-manipuri.png)