# Yiddish

This page offers basic guidance on typesetting a LaTeX document in the
Yiddish language using the Hebrew script.

## Support with `ini` locale file

Here is a minimal sample file with `yiddish` as the main language, with `luatex`.

```tex
\documentclass[yiddish]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{NewComputerModern10}

\begin{document}

Local name $=$ ייִדיש

Today $=$ \today

\end{document}
```

![](../media/locale-yiddish.png)