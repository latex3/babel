# Nheengatu

This page offers basic guidance on typesetting a LaTeX document in the
Nheengatu language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `nheengatu` as the main language, with `luatex`.

```tex
\documentclass[nheengatu]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ nheẽgatu

Today $=$ \today

\end{document}
```

![](../media/locale-nheengatu.png)