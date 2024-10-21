# Nigerian Pidgin

This page offers basic guidance on typesetting a LaTeX document in the
Nigerian Pidgin language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `nigerianpidgin` as the main language, with `luatex`.

```tex
\documentclass[nigerianpidgin]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Naijíriá Píjin

Today $=$ \today

\end{document}
```

![](../media/locale-nigerianpidgin.png)