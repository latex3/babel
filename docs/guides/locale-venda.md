# Venda

This page offers basic guidance on typesetting a LaTeX document in the
Venda language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `venda` as the main language, with `luatex`.

```tex
\documentclass[venda]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Tshivenḓa

Today $=$ \today

\end{document}
```

![](../media/locale-venda.png)