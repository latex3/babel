# Inari Sami

This page offers basic guidance on typesetting a LaTeX document in the
Inari Sami language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `inarisami` as the main language, with `luatex`.

```tex
\documentclass[inarisami]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ anarâškielâ

Today $=$ \today

\end{document}
```

![](../media/locale-inarisami.png)