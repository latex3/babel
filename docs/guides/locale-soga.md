# Soga

This page offers basic guidance on typesetting a LaTeX document in the
Soga language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `soga` as the main language, with `luatex`.

```tex
\documentclass[soga]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Olusoga

Today $=$ \today

\end{document}
```

![](../media/locale-soga.png)