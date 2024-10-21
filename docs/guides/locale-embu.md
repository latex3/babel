# Embu

This page offers basic guidance on typesetting a LaTeX document in the
Embu language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `embu` as the main language, with `luatex`.

```tex
\documentclass[embu]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Kĩembu

Today $=$ \today

\end{document}
```

![](../media/locale-embu.png)