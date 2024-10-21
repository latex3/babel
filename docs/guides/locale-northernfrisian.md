# Northern Frisian

This page offers basic guidance on typesetting a LaTeX document in the
Northern Frisian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `northernfrisian` as the main language, with `luatex`.

```tex
\documentclass[northernfrisian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Nordfriisk

Today $=$ \today

\end{document}
```

![](../media/locale-northernfrisian.png)