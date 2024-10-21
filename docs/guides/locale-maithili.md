# Maithili

This page offers basic guidance on typesetting a LaTeX document in the
Maithili language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `maithili` as the main language, with `luatex`.

```tex
\documentclass[maithili]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ मैथिली

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-maithili.png)