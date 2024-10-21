# Kamba

This page offers basic guidance on typesetting a LaTeX document in the
Kamba language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kamba` as the main language, with `luatex`.

```tex
\documentclass[kamba]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kikamba

Today $=$ \today

\end{document}
```

![](../media/locale-kamba.png)