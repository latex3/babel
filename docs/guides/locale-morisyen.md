# Morisyen

This page offers basic guidance on typesetting a LaTeX document in the
Morisyen language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `morisyen` as the main language, with `luatex`.

```tex
\documentclass[morisyen]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ kreol morisien

Today $=$ \today

\end{document}
```

![](../media/locale-morisyen.png)