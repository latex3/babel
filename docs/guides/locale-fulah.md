# Fulah

This page offers basic guidance on typesetting a LaTeX document in the
Fulah language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `fulah` as the main language, with `luatex`.

```tex
\documentclass[fulah]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Pulaar

Today $=$ \today

\end{document}
```

![](../media/locale-fulah.png)