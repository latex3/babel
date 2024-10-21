# Tatar

This page offers basic guidance on typesetting a LaTeX document in the
Tatar language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `tatar` as the main language, with `luatex`.

```tex
\documentclass[tatar]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ татар

Today $=$ \today

\end{document}
```

![](../media/locale-tatar.png)