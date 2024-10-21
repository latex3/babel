# Somali

This page offers basic guidance on typesetting a LaTeX document in the
Somali language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `somali` as the main language, with `luatex`.

```tex
\documentclass[somali]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Soomaali

Today $=$ \today

\end{document}
```

![](../media/locale-somali.png)