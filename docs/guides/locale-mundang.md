# Mundang

This page offers basic guidance on typesetting a LaTeX document in the
Mundang language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `mundang` as the main language, with `luatex`.

```tex
\documentclass[mundang]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Mundaŋ

Today $=$ \today

\end{document}
```

![](../media/locale-mundang.png)