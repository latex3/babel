# Tajik

This page offers basic guidance on typesetting a LaTeX document in the
Tajik language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `tajik` as the main language, with `luatex`.

```tex
\documentclass[tajik]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ тоҷикӣ

Today $=$ \today

\end{document}
```

![](../media/locale-tajik.png)