# Rwa

This page offers basic guidance on typesetting a LaTeX document in the
Rwa language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `rwa` as the main language, with `luatex`.

```tex
\documentclass[rwa]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kiruwa

Today $=$ \today

\end{document}
```

![](../media/locale-rwa.png)