# Luxembourgish

This page offers basic guidance on typesetting a LaTeX document in the
Luxembourgish language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `luxembourgish` as the main language, with `luatex`.

```tex
\documentclass[luxembourgish]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Lëtzebuergesch

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-luxembourgish.png)