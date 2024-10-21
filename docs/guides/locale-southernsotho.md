# Southern Sotho

This page offers basic guidance on typesetting a LaTeX document in the
Southern Sotho language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `southernsotho` as the main language, with `luatex`.

```tex
\documentclass[southernsotho]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Sesotho

Today $=$ \today

\end{document}
```

![](../media/locale-southernsotho.png)