# Cherokee

This page offers basic guidance on typesetting a LaTeX document in the
Cherokee language using the Cherokee script.

## Support with `ini` locale file

Here is a minimal sample file with `cherokee` as the main language, with `luatex`.

```tex
\documentclass[cherokee]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ ᏣᎳᎩ

Today $=$ \today

\end{document}
```

![](../media/locale-cherokee.png)