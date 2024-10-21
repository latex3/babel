# Marathi

This page offers basic guidance on typesetting a LaTeX document in the
Marathi language using the Devanagari script.

## Support with `ini` locale file

Here is a minimal sample file with `marathi` as the main language, with `luatex`.

```tex
\documentclass[marathi]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{Shobhika}

\begin{document}

Local name $=$ मराठी

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-marathi.png)