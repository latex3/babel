# Lingala

This page offers basic guidance on typesetting a LaTeX document in the
Lingala language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `lingala` as the main language, with `luatex`.

```tex
\documentclass[lingala]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ lingála

Today $=$ \today

\end{document}
```

![](../media/locale-lingala.png)