# Igbo

This page offers basic guidance on typesetting a LaTeX document in the
Igbo language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `igbo` as the main language, with `luatex`.

```tex
\documentclass[igbo]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Igbo

Today $=$ \today

\end{document}
```

![](../media/locale-igbo.png)