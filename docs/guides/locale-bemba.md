# Bemba

This page offers basic guidance on typesetting a LaTeX document in the
Bemba language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `bemba` as the main language, with `luatex`.

```tex
\documentclass[bemba]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Ichibemba

Today $=$ \today

\end{document}
```

![](../media/locale-bemba.png)