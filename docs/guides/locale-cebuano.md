# Cebuano

This page offers basic guidance on typesetting a LaTeX document in the
Cebuano language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `cebuano` as the main language, with `luatex`.

```tex
\documentclass[cebuano]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Cebuano

Today $=$ \today

\end{document}
```

![](../media/locale-cebuano.png)