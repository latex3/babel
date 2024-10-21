# Basaa

This page offers basic guidance on typesetting a LaTeX document in the
Basaa language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `basaa` as the main language, with `luatex`.

```tex
\documentclass[basaa]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Ɓàsàa

Today $=$ \today

\end{document}
```

![](../media/locale-basaa.png)