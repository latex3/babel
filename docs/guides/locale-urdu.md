# Urdu

This page offers basic guidance on typesetting a LaTeX document in the
Urdu language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `urdu` as the main language, with `luatex`.

```tex
\documentclass[urdu]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ اردو

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-urdu.png)