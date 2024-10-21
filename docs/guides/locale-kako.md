# Kako

This page offers basic guidance on typesetting a LaTeX document in the
Kako language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kako` as the main language, with `luatex`.

```tex
\documentclass[kako]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ kakɔ

Today $=$ \today

\end{document}
```

![](../media/locale-kako.png)