# Samburu

This page offers basic guidance on typesetting a LaTeX document in the
Samburu language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `samburu` as the main language, with `luatex`.

```tex
\documentclass[samburu]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kisampur

Today $=$ \today

\end{document}
```

![](../media/locale-samburu.png)