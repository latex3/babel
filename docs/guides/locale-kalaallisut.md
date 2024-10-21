# Kalaallisut

This page offers basic guidance on typesetting a LaTeX document in the
Kalaallisut language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kalaallisut` as the main language, with `luatex`.

```tex
\documentclass[kalaallisut]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ kalaallisut

Today $=$ \today

\end{document}
```

![](../media/locale-kalaallisut.png)