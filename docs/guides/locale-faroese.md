# Faroese

This page offers basic guidance on typesetting a LaTeX document in the
Faroese language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `faroese` as the main language, with `luatex`.

```tex
\documentclass[faroese]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ føroyskt

Today $=$ \today

\end{document}
```

![](../media/locale-faroese.png)