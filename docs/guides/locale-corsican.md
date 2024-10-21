# Corsican

This page offers basic guidance on typesetting a LaTeX document in the
Corsican language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `corsican` as the main language, with `luatex`.

```tex
\documentclass[corsican]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ corsu

Today $=$ \today

\end{document}
```

![](../media/locale-corsican.png)