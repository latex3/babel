# Mazanderani

This page offers basic guidance on typesetting a LaTeX document in the
Mazanderani language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `mazanderani` as the main language, with `luatex`.

```tex
\documentclass[mazanderani]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ مازرونی

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-mazanderani.png)