# Muscogee

This page offers basic guidance on typesetting a LaTeX document in the
Muscogee language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `muscogee` as the main language, with `luatex`.

```tex
\documentclass[muscogee]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Mvskoke

Today $=$ \today

\end{document}
```

![](../media/locale-muscogee.png)