# Erzya

This page offers basic guidance on typesetting a LaTeX document in the
Erzya language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `erzya` as the main language, with `luatex`.

```tex
\documentclass[erzya]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ эрзянь кель

Today $=$ \today

\end{document}
```

![](../media/locale-erzya.png)