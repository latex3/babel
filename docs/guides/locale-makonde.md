# Makonde

This page offers basic guidance on typesetting a LaTeX document in the
Makonde language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `makonde` as the main language, with `luatex`.

```tex
\documentclass[makonde]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Chimakonde

Today $=$ \today

\end{document}
```

![](../media/locale-makonde.png)