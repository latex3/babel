# Luo

This page offers basic guidance on typesetting a LaTeX document in the
Luo language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `luo` as the main language, with `luatex`.

```tex
\documentclass[luo]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Dholuo

Today $=$ \today

\end{document}
```

![](../media/locale-luo.png)