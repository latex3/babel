# Tsonga

This page offers basic guidance on typesetting a LaTeX document in the
Tsonga language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `tsonga` as the main language, with `luatex`.

```tex
\documentclass[tsonga]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Xitsonga

Today $=$ \today

\end{document}
```

![](../media/locale-tsonga.png)