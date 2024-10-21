# Cantonese

This page offers basic guidance on typesetting a LaTeX document in the
Cantonese language using the Traditional script.

## Support with `ini` locale file

Here is a minimal sample file with `cantonese` as the main language, with `luatex`.

```tex
\documentclass[cantonese]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ 粵語

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-cantonese.png)