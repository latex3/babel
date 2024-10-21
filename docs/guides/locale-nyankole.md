# Nyankole

This page offers basic guidance on typesetting a LaTeX document in the
Nyankole language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `nyankole` as the main language, with `luatex`.

```tex
\documentclass[nyankole]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Runyankore

Today $=$ \today

\end{document}
```

![](../media/locale-nyankole.png)