# Waray

This page offers basic guidance on typesetting a LaTeX document in the
Waray language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `waray` as the main language, with `luatex`.

```tex
\documentclass[waray]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Waray

\end{document}
```

![](../media/locale-waray.png)