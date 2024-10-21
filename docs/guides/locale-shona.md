# Shona

This page offers basic guidance on typesetting a LaTeX document in the
Shona language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `shona` as the main language, with `luatex`.

```tex
\documentclass[shona]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ chiShona

Today $=$ \today

\end{document}
```

![](../media/locale-shona.png)