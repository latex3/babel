# Chiga

This page offers basic guidance on typesetting a LaTeX document in the
Chiga language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `chiga` as the main language, with `luatex`.

```tex
\documentclass[chiga]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Rukiga

Today $=$ \today

\end{document}
```

![](../media/locale-chiga.png)