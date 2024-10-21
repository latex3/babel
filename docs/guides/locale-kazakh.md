# Kazakh

This page offers basic guidance on typesetting a LaTeX document in the
Kazakh language using the Cyrillic script.

## Support with `ini` locale file

Here is a minimal sample file with `kazakh` as the main language, with `luatex`.

```tex
\documentclass[kazakh]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ қазақ тілі

Today $=$ \today

\end{document}
```

![](../media/locale-kazakh.png)