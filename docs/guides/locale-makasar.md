# Makasar

This page offers basic guidance on typesetting a LaTeX document in the
Makasar language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `makasar` as the main language, with `luatex`.

```tex
\documentclass[makasar]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ basa Mangkasaraʼ

\end{document}
```

![](../media/locale-makasar.png)