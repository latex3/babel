# North Ndebele

This page offers basic guidance on typesetting a LaTeX document in the
North Ndebele language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `northndebele` as the main language, with `luatex`.

```tex
\documentclass[northndebele]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ isiNdebele

Today $=$ \today

\end{document}
```

![](../media/locale-northndebele.png)