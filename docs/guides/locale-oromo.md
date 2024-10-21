# Oromo

This page offers basic guidance on typesetting a LaTeX document in the
Oromo language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `oromo` as the main language, with `luatex`.

```tex
\documentclass[oromo]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Oromoo

Today $=$ \today

\end{document}
```

![](../media/locale-oromo.png)