# Zarma

This page offers basic guidance on typesetting a LaTeX document in the
Zarma language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `zarma` as the main language, with `luatex`.

```tex
\documentclass[zarma]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Zarmaciine

Today $=$ \today

\end{document}
```

![](../media/locale-zarma.png)