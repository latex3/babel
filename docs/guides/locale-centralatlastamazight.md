# Central Atlas Tamazight

This page offers basic guidance on typesetting a LaTeX document in the
Central Atlas Tamazight language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `centralatlastamazight` as the main language, with `luatex`.

```tex
\documentclass[centralatlastamazight]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Tamaziɣt n laṭlaṣ

Today $=$ \today

\end{document}
```

![](../media/locale-centralatlastamazight.png)