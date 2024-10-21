# Masai

This page offers basic guidance on typesetting a LaTeX document in the
Masai language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `masai` as the main language, with `luatex`.

```tex
\documentclass[masai]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Maa

Today $=$ \today

\end{document}
```

![](../media/locale-masai.png)