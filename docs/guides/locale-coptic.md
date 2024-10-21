# Coptic

This page offers basic guidance on typesetting a LaTeX document in the
Coptic language using the Coptic script.

## Support with `ini` locale file

Here is a minimal sample file with `coptic` as the main language, with `luatex`.

```tex
\documentclass[coptic]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ϯⲙⲉⲧⲣⲉⲙⲛ̀ⲭⲏⲙⲓ

\end{document}
```

![](../media/locale-coptic.png)