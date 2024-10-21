# Tok Pisin

This page offers basic guidance on typesetting a LaTeX document in the
Tok Pisin language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `tokpisin` as the main language, with `luatex`.

```tex
\documentclass[tokpisin]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Tok Pisin

Today $=$ \today

\end{document}
```

![](../media/locale-tokpisin.png)