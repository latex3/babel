# Kinyarwanda

This page offers basic guidance on typesetting a LaTeX document in the
Kinyarwanda language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kinyarwanda` as the main language, with `luatex`.

```tex
\documentclass[kinyarwanda]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kinyarwanda

Today $=$ \today

\end{document}
```

![](../media/locale-kinyarwanda.png)