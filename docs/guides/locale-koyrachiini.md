# Koyra Chiini

This page offers basic guidance on typesetting a LaTeX document in the
Koyra Chiini language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `koyrachiini` as the main language, with `luatex`.

```tex
\documentclass[koyrachiini]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Koyra ciini

Today $=$ \today

\end{document}
```

![](../media/locale-koyrachiini.png)