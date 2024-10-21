# Aymara

This page offers basic guidance on typesetting a LaTeX document in the
Aymara language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `aymara` as the main language, with `luatex`.

```tex
\documentclass[aymara]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ aymar aru

\end{document}
```

![](../media/locale-aymara.png)