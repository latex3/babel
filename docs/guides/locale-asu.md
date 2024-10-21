# Asu

This page offers basic guidance on typesetting a LaTeX document in the
Asu language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `asu` as the main language, with `luatex`.

```tex
\documentclass[asu]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kipare

Today $=$ \today

\end{document}
```

![](../media/locale-asu.png)