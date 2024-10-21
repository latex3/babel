# Kikuyu

This page offers basic guidance on typesetting a LaTeX document in the
Kikuyu language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kikuyu` as the main language, with `luatex`.

```tex
\documentclass[kikuyu]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Gikuyu

Today $=$ \today

\end{document}
```

![](../media/locale-kikuyu.png)