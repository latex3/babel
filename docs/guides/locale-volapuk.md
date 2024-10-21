# Volapük

This page offers basic guidance on typesetting a LaTeX document in the
Volapük language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `volapuk` as the main language, with `luatex`.

```tex
\documentclass[volapuk]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Volapük

Today $=$ \today

\end{document}
```

![](../media/locale-volapuk.png)