# Kaingang

This page offers basic guidance on typesetting a LaTeX document in the
Kaingang language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kaingang` as the main language, with `luatex`.

```tex
\documentclass[kaingang]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ kanhgág

Today $=$ \today

\end{document}
```

![](../media/locale-kaingang.png)