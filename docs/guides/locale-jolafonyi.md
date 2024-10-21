# Jola-Fonyi

This page offers basic guidance on typesetting a LaTeX document in the
Jola-Fonyi language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `jolafonyi` as the main language, with `luatex`.

```tex
\documentclass[jolafonyi]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ joola

Today $=$ \today

\end{document}
```

![](../media/locale-jolafonyi.png)