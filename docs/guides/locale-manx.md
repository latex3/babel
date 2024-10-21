# Manx

This page offers basic guidance on typesetting a LaTeX document in the
Manx language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `manx` as the main language, with `luatex`.

```tex
\documentclass[manx]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Gaelg

Today $=$ \today

\end{document}
```

![](../media/locale-manx.png)