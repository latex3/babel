# Kwasio

This page offers basic guidance on typesetting a LaTeX document in the
Kwasio language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kwasio` as the main language, with `luatex`.

```tex
\documentclass[kwasio]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kwasio

Today $=$ \today

\end{document}
```

![](../media/locale-kwasio.png)