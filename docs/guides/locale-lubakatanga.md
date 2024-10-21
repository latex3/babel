# Luba-Katanga

This page offers basic guidance on typesetting a LaTeX document in the
Luba-Katanga language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `lubakatanga` as the main language, with `luatex`.

```tex
\documentclass[lubakatanga]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Tshiluba

Today $=$ \today

\end{document}
```

![](../media/locale-lubakatanga.png)