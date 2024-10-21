# Tongan

This page offers basic guidance on typesetting a LaTeX document in the
Tongan language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `tongan` as the main language, with `luatex`.

```tex
\documentclass[tongan]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ lea fakatonga

Today $=$ \today

\end{document}
```

![](../media/locale-tongan.png)