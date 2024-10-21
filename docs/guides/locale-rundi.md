# Rundi

This page offers basic guidance on typesetting a LaTeX document in the
Rundi language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `rundi` as the main language, with `luatex`.

```tex
\documentclass[rundi]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Ikirundi

Today $=$ \today

\end{document}
```

![](../media/locale-rundi.png)