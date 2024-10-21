# Sardinian

This page offers basic guidance on typesetting a LaTeX document in the
Sardinian language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `sardinian` as the main language, with `luatex`.

```tex
\documentclass[sardinian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ sardu

Today $=$ \today

\end{document}
```

![](../media/locale-sardinian.png)