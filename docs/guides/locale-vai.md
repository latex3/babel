# Vai

This page offers basic guidance on typesetting a LaTeX document in the
Vai language using the Vai script.

## Support with `ini` locale file

Here is a minimal sample file with `vai` as the main language, with `luatex`.

```tex
\documentclass[vai]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSans}

\begin{document}

Local name $=$ ꕙꔤ

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-vai.png)