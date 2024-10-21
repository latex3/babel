# Asturian

This page offers basic guidance on typesetting a LaTeX document in the
Asturian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `asturian` as the main language, with `luatex`.

```tex
\documentclass[asturian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ asturianu

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-asturian.png)