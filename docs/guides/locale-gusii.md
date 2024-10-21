# Gusii

This page offers basic guidance on typesetting a LaTeX document in the
Gusii language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `gusii` as the main language, with `luatex`.

```tex
\documentclass[gusii]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Ekegusii

Today $=$ \today

\end{document}
```

![](../media/locale-gusii.png)