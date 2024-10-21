# Tswana

This page offers basic guidance on typesetting a LaTeX document in the
Tswana language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `tswana` as the main language, with `luatex`.

```tex
\documentclass[tswana]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Setswana

Today $=$ \today

\end{document}
```

![](../media/locale-tswana.png)