# Taroko

This page offers basic guidance on typesetting a LaTeX document in the
Taroko language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `taroko` as the main language, with `luatex`.

```tex
\documentclass[taroko]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ patas Taroko

Today $=$ \today

\end{document}
```

![](../media/locale-taroko.png)