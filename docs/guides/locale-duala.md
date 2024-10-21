# Duala

This page offers basic guidance on typesetting a LaTeX document in the
Duala language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `duala` as the main language, with `luatex`.

```tex
\documentclass[duala]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ duálá

Today $=$ \today

\end{document}
```

![](../media/locale-duala.png)