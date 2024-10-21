# Filipino

This page offers basic guidance on typesetting a LaTeX document in the
Filipino language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `filipino` as the main language, with `luatex`.

```tex
\documentclass[filipino]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Filipino

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-filipino.png)