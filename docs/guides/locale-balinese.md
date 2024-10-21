# Balinese

This page offers basic guidance on typesetting a LaTeX document in the
Balinese language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `balinese` as the main language, with `luatex`.

```tex
\documentclass[balinese]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Basa Bali

\end{document}
```

![](../media/locale-balinese.png)