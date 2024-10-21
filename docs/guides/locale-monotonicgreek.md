# Greek

This page offers basic guidance on typesetting a LaTeX document in the
Greek language using the Greek script.

## Support with `ini` locale file

Here is a minimal sample file with `monotonicgreek` as the main language, with `luatex`.

```tex
\documentclass[monotonicgreek]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ Ελληνικά

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-monotonicgreek.png)