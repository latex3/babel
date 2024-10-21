# Rombo

This page offers basic guidance on typesetting a LaTeX document in the
Rombo language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `rombo` as the main language, with `luatex`.

```tex
\documentclass[rombo]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kihorombo

Today $=$ \today

\end{document}
```

![](../media/locale-rombo.png)