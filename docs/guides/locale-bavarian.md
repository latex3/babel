# Bavarian

This page offers basic guidance on typesetting a LaTeX document in the
Bavarian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `bavarian` as the main language, with `luatex`.

```tex
\documentclass[bavarian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Boarisch

\end{document}
```

![](../media/locale-bavarian.png)