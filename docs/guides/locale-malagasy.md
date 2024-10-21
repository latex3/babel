# Malagasy

This page offers basic guidance on typesetting a LaTeX document in the
Malagasy language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `malagasy` as the main language, with `luatex`.

```tex
\documentclass[malagasy]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Malagasy

Today $=$ \today

\end{document}
```

![](../media/locale-malagasy.png)