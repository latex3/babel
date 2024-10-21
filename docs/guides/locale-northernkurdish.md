# Northern Kurdish

This page offers basic guidance on typesetting a LaTeX document in the
Northern Kurdish language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `northernkurdish` as the main language, with `luatex`.

```tex
\documentclass[northernkurdish]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kurmancî

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-northernkurdish.png)