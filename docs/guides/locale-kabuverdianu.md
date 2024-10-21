# Kabuverdianu

This page offers basic guidance on typesetting a LaTeX document in the
Kabuverdianu language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kabuverdianu` as the main language, with `luatex`.

```tex
\documentclass[kabuverdianu]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ kabuverdianu

Today $=$ \today

\end{document}
```

![](../media/locale-kabuverdianu.png)