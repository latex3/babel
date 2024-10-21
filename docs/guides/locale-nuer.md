# Nuer

This page offers basic guidance on typesetting a LaTeX document in the
Nuer language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `nuer` as the main language, with `luatex`.

```tex
\documentclass[nuer]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Thok Nath

Today $=$ \today

\end{document}
```

![](../media/locale-nuer.png)