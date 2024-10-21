# Yoruba

This page offers basic guidance on typesetting a LaTeX document in the
Yoruba language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `yoruba` as the main language, with `luatex`.

```tex
\documentclass[yoruba]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Èdè Yorùbá

Today $=$ \today

\end{document}
```

![](../media/locale-yoruba.png)