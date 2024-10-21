# Swahili

This page offers basic guidance on typesetting a LaTeX document in the
Swahili language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `swahili` as the main language, with `luatex`.

```tex
\documentclass[swahili]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kiswahili

Today $=$ \today

\end{document}
```

![](../media/locale-swahili.png)