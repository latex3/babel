# Māori

This page offers basic guidance on typesetting a LaTeX document in the
Māori language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `maori` as the main language, with `luatex`.

```tex
\documentclass[maori]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Māori

Today $=$ \today

\end{document}
```

![](../media/locale-maori.png)