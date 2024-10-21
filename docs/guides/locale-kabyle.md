# Kabyle

This page offers basic guidance on typesetting a LaTeX document in the
Kabyle language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `kabyle` as the main language, with `luatex`.

```tex
\documentclass[kabyle]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Taqbaylit

Today $=$ \today

\end{document}
```

![](../media/locale-kabyle.png)