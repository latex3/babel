# Hausa

This page offers basic guidance on typesetting a LaTeX document in the
Hausa language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `hausa` as the main language, with `luatex`.

```tex
\documentclass[hausa]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Hausa

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-hausa.png)