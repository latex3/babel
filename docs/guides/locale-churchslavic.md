# Church Slavic

This page offers basic guidance on typesetting a LaTeX document in the
Church Slavic language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `churchslavic` as the main language, with `luatex`.

```tex
\documentclass[churchslavic]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ црькъвьнословѣньскъ ѩзыкъ

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-churchslavic.png)