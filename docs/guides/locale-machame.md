# Machame

This page offers basic guidance on typesetting a LaTeX document in the
Machame language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `machame` as the main language, with `luatex`.

```tex
\documentclass[machame]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kimachame

Today $=$ \today

\end{document}
```

![](../media/locale-machame.png)