# Saho

This page offers basic guidance on typesetting a LaTeX document in the
Saho language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `saho` as the main language, with `luatex`.

```tex
\documentclass[saho]{article}

\usepackage[provide=*]{babel}

\begin{document}

Today $=$ \today

\end{document}
```

![](../media/locale-saho.png)