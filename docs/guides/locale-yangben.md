# Yangben

This page offers basic guidance on typesetting a LaTeX document in the
Yangben language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `yangben` as the main language, with `luatex`.

```tex
\documentclass[yangben]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ nuasue

Today $=$ \today

\end{document}
```

![](../media/locale-yangben.png)