# Ga

This page offers basic guidance on typesetting a LaTeX document in the
Ga language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `ga` as the main language, with `luatex`.

```tex
\documentclass[ga]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Gã

Today $=$ \today

\end{document}
```

![](../media/locale-ga.png)