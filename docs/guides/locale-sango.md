# Sango

This page offers basic guidance on typesetting a LaTeX document in the
Sango language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `sango` as the main language, with `luatex`.

```tex
\documentclass[sango]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Sängö

Today $=$ \today

\end{document}
```

![](../media/locale-sango.png)