# Lakota

This page offers basic guidance on typesetting a LaTeX document in the
Lakota language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `lakota` as the main language, with `luatex`.

```tex
\documentclass[lakota]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Lakȟólʼiyapi

Today $=$ \today

\end{document}
```

![](../media/locale-lakota.png)