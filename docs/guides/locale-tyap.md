# Tyap

This page offers basic guidance on typesetting a LaTeX document in the
Tyap language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `tyap` as the main language, with `luatex`.

```tex
\documentclass[tyap]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Katab

Today $=$ \today

\end{document}
```

![](../media/locale-tyap.png)