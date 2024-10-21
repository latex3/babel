# Swati

This page offers basic guidance on typesetting a LaTeX document in the
Swati language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `swati` as the main language, with `luatex`.

```tex
\documentclass[swati]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ siSwati

Today $=$ \today

\end{document}
```

![](../media/locale-swati.png)