# Xhosa

This page offers basic guidance on typesetting a LaTeX document in the
Xhosa language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `xhosa` as the main language, with `luatex`.

```tex
\documentclass[xhosa]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ IsiXhosa

Today $=$ \today

\end{document}
```

![](../media/locale-xhosa.png)