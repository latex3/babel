# Prussian

This page offers basic guidance on typesetting a LaTeX document in the
Prussian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `prussian` as the main language, with `luatex`.

```tex
\documentclass[prussian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ prūsiskan

Today $=$ \today

\end{document}
```

![](../media/locale-prussian.png)