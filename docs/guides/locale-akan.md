# Akan

This page offers basic guidance on typesetting a LaTeX document in the
Akan language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `akan` as the main language, with `luatex`.

```tex
\documentclass[akan]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Akan

Today $=$ \today

\end{document}
```

![](../media/locale-akan.png)