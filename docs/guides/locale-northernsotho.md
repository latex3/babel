# Northern Sotho

This page offers basic guidance on typesetting a LaTeX document in the
Northern Sotho language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `northernsotho` as the main language, with `luatex`.

```tex
\documentclass[northernsotho]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Sesotho sa Leboa

Today $=$ \today

\end{document}
```

![](../media/locale-northernsotho.png)