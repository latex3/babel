# Vunjo

This page offers basic guidance on typesetting a LaTeX document in the
Vunjo language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `vunjo` as the main language, with `luatex`.

```tex
\documentclass[vunjo]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kyivunjo

Today $=$ \today

\end{document}
```

![](../media/locale-vunjo.png)