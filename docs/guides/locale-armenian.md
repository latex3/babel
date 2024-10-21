# Armenian

This page offers basic guidance on typesetting a LaTeX document in the
Armenian language using the Armenian script.

## Support with `ini` locale file

Here is a minimal sample file with `armenian` as the main language, with `luatex`.

```tex
\documentclass[armenian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{FreeSerif}

\begin{document}

Local name $=$ հայերեն

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-armenian.png)