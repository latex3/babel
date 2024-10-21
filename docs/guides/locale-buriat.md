# Buriat

This page offers basic guidance on typesetting a LaTeX document in the
Buriat language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `buriat` as the main language, with `luatex`.

```tex
\documentclass[buriat]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ Буряад

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-buriat.png)