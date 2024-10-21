# Central Kurdish

This page offers basic guidance on typesetting a LaTeX document in the
Central Kurdish language using the Arabic script.

## Support with `ini` locale file

Here is a minimal sample file with `centralkurdish` as the main language, with `luatex`.

```tex
\documentclass[centralkurdish]{article}

\usepackage[provide=*,bidi=basic]{babel}

\babelfont{rm}[Renderer=Harfbuzz]{FreeSerif}

\begin{document}

Local name $=$ کوردیی ناوەندی

Chapter $=$ \chaptername

Today $=$ \today

Digits $=$ \localenumeral{digits}{0123456789}

\end{document}
```

![](../media/locale-centralkurdish.png)