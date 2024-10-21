# Syriac

This page offers basic guidance on typesetting a LaTeX document in the
Syriac language using the Syriac script.

## Support with `ini` locale file

Here is a minimal sample file with `syriac` as the main language, with `luatex`.

```tex
\documentclass[syriac]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ ܠܫܢܐ ܣܘܪܝܝܐ

Today $=$ \today

\end{document}
```

![](../media/locale-syriac.png)