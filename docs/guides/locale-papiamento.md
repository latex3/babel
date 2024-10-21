# Papiamento

This page offers basic guidance on typesetting a LaTeX document in the
Papiamento language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `papiamento` as the main language, with `luatex`.

```tex
\documentclass[papiamento]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Papiamentu

Today $=$ \today

\end{document}
```

![](../media/locale-papiamento.png)