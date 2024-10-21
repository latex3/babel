# Sicilian

This page offers basic guidance on typesetting a LaTeX document in the
Sicilian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `sicilian` as the main language, with `luatex`.

```tex
\documentclass[sicilian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ sicilianu

Today $=$ \today

\end{document}
```

![](../media/locale-sicilian.png)