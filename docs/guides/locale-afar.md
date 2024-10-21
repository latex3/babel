# Afar

This page offers basic guidance on typesetting a LaTeX document in the
Afar language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `afar` as the main language, with `luatex`.

```tex
\documentclass[afar]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Qafar

Today $=$ \today

\end{document}
```

![](../media/locale-afar.png)