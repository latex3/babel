# Sakha

This page offers basic guidance on typesetting a LaTeX document in the
Sakha language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `sakha` as the main language, with `luatex`.

```tex
\documentclass[sakha]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ саха тыла

Today $=$ \today

\end{document}
```

![](../media/locale-sakha.png)