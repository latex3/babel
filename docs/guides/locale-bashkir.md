# Bashkir

This page offers basic guidance on typesetting a LaTeX document in the
Bashkir language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `bashkir` as the main language, with `luatex`.

```tex
\documentclass[bashkir]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ башҡорт теле

\end{document}
```

![](../media/locale-bashkir.png)