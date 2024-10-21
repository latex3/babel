# Sindhi

This page offers basic guidance on typesetting a LaTeX document in the
Sindhi language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `sindhi` as the main language, with `luatex`.

```tex
\documentclass[sindhi]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ سنڌي

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-sindhi.png)