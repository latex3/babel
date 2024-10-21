# Koyraboro Senni

This page offers basic guidance on typesetting a LaTeX document in the
Koyraboro Senni language using the Latin script.

## Support with `ini` locale file

Here is a minimal sample file with `koyraborosenni` as the main language, with `luatex`.

```tex
\documentclass[koyraborosenni]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Koyraboro senni

Today $=$ \today

\end{document}
```

![](../media/locale-koyraborosenni.png)