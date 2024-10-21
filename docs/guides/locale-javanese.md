# Javanese

This page offers basic guidance on typesetting a LaTeX document in the
Javanese language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `javanese` as the main language, with `luatex`.

```tex
\documentclass[javanese]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Jawa

Today $=$ \today

\end{document}
```

![](../media/locale-javanese.png)