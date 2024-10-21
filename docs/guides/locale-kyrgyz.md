# Kyrgyz

This page offers basic guidance on typesetting a LaTeX document in the
Kyrgyz language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `kyrgyz` as the main language, with `luatex`.

```tex
\documentclass[kyrgyz]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ кыргызча

Today $=$ \today

\end{document}
```

![](../media/locale-kyrgyz.png)