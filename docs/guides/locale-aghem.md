# Aghem

This page offers basic guidance on typesetting a LaTeX document in the
Aghem language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `aghem` as the main language, with `luatex`.

```tex
\documentclass[aghem]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Aghem

Today $=$ \today

\end{document}
```

![](../media/locale-aghem.png)