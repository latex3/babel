# Georgian

This page offers basic guidance on typesetting a LaTeX document in the
Georgian language using the Georgian script.

## Support with the traditional way (`ldf`)

The Georgian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `georgian` as the main language, with `luatex`.

```tex
\documentclass[georgian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{FreeSerif}

\begin{document}

Local name $=$ ქართული

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-georgian.png)