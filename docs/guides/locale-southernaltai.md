# Southern Altai

This page offers basic guidance on typesetting a LaTeX document in the
Southern Altai language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `southernaltai` as the main language, with `luatex`.

```tex
\documentclass[southernaltai]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Chapter $=$ \chaptername

\end{document}
```

![](../media/locale-southernaltai.png)