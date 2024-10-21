# Ngiemboon

This page offers basic guidance on typesetting a LaTeX document in the
Ngiemboon language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `ngiemboon` as the main language, with `luatex`.

```tex
\documentclass[ngiemboon]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Shwóŋò ngiembɔɔn

Today $=$ \today

\end{document}
```

![](../media/locale-ngiemboon.png)