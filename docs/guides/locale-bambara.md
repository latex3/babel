# Bambara

This page offers basic guidance on typesetting a LaTeX document in the
Bambara language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `bambara` as the main language, with `luatex`.

```tex
\documentclass[bambara]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ bamanakan

Today $=$ \today

\end{document}
```

![](../media/locale-bambara.png)