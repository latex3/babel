# Gujarati

This page offers basic guidance on typesetting a LaTeX document in the
Gujarati language using the Gujarati script.

## Support with `ini` locale file

Here is a minimal sample file with `gujarati` as the main language, with `luatex`.

```tex
\documentclass[gujarati]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ગુજરાતી

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-gujarati.png)