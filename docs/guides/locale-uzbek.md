# Uzbek

This page offers basic guidance on typesetting a LaTeX document in the
Uzbek language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `uzbek` as the main language, with `luatex`.

```tex
\documentclass[uzbek]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ o‘zbek

Today $=$ \today

\end{document}
```

![](../media/locale-uzbek.png)