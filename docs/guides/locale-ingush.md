# Ingush

This page offers basic guidance on typesetting a LaTeX document in the
Ingush language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `ingush` as the main language, with `luatex`.

```tex
\documentclass[ingush]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ гӀалгӀай мотт

\end{document}
```

![](../media/locale-ingush.png)