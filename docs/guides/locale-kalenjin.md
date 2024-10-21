# Kalenjin

This page offers basic guidance on typesetting a LaTeX document in the
Kalenjin language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kalenjin` as the main language, with `luatex`.

```tex
\documentclass[kalenjin]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kalenjin

Today $=$ \today

\end{document}
```

![](../media/locale-kalenjin.png)