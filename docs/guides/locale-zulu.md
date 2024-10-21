# Zulu

This page offers basic guidance on typesetting a LaTeX document in the
Zulu language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `zulu` as the main language, with `luatex`.

```tex
\documentclass[zulu]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ isiZulu

Today $=$ \today

\end{document}
```

![](../media/locale-zulu.png)