# Nyanja

This page offers basic guidance on typesetting a LaTeX document in the
Nyanja language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `nyanja` as the main language, with `luatex`.

```tex
\documentclass[nyanja]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Nyanja

Today $=$ \today

\end{document}
```

![](../media/locale-nyanja.png)