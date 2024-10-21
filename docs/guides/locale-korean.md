# Korean

This page offers basic guidance on typesetting a LaTeX document in the
Korean language using the Korean script.

## Support with `ini` locale file

Here is a minimal sample file with `korean` as the main language, with `luatex`.

```tex
\documentclass[korean]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ 한국어

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-korean.png)