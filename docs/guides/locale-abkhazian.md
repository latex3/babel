# Abkhazian

This page offers basic guidance on typesetting a LaTeX document in the
Abkhazian language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `abkhazian` as the main language, with `luatex`.

```tex
\documentclass[abkhazian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ Аԥсшәа

Today $=$ \today

\end{document}
```

![](../media/locale-abkhazian.png)