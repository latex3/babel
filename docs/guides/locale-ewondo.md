# Ewondo

This page offers basic guidance on typesetting a LaTeX document in the
Ewondo language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `ewondo` as the main language, with `luatex`.

```tex
\documentclass[ewondo]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ ewondo

Today $=$ \today

\end{document}
```

![](../media/locale-ewondo.png)