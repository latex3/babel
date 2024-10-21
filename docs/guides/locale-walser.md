# Walser

This page offers basic guidance on typesetting a LaTeX document in the
Walser language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `walser` as the main language, with `luatex`.

```tex
\documentclass[walser]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Walser

Today $=$ \today

\end{document}
```

![](../media/locale-walser.png)