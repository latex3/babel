# Ossetic

This page offers basic guidance on typesetting a LaTeX document in the
Ossetic language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `ossetic` as the main language, with `luatex`.

```tex
\documentclass[ossetic]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ирон

Today $=$ \today

\end{document}
```

![](../media/locale-ossetic.png)