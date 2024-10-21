# Quechua

This page offers basic guidance on typesetting a LaTeX document in the
Quechua language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `quechua` as the main language, with `luatex`.

```tex
\documentclass[quechua]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Runasimi

Today $=$ \today

\end{document}
```

![](../media/locale-quechua.png)