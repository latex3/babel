# Tasawaq

This page offers basic guidance on typesetting a LaTeX document in the
Tasawaq language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `tasawaq` as the main language, with `luatex`.

```tex
\documentclass[tasawaq]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Tasawaq senni

Today $=$ \today

\end{document}
```

![](../media/locale-tasawaq.png)