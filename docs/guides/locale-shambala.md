# Shambala

This page offers basic guidance on typesetting a LaTeX document in the
Shambala language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `shambala` as the main language, with `luatex`.

```tex
\documentclass[shambala]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kishambaa

Today $=$ \today

\end{document}
```

![](../media/locale-shambala.png)