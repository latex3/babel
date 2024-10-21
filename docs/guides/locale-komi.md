# Komi

This page offers basic guidance on typesetting a LaTeX document in the
Komi language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `komi` as the main language, with `luatex`.

```tex
\documentclass[komi]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ коми кыв

\end{document}
```

![](../media/locale-komi.png)