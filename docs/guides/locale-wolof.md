# Wolof

This page offers basic guidance on typesetting a LaTeX document in the
Wolof language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `wolof` as the main language, with `luatex`.

```tex
\documentclass[wolof]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Wolof

Today $=$ \today

\end{document}
```

![](../media/locale-wolof.png)