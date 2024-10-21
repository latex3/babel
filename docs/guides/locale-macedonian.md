# Macedonian

This page offers basic guidance on typesetting a LaTeX document in the
Macedonian language using the Cyrillic script.

## Support with the traditional way (`ldf`)

The Macedonian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-macedonian](https://ctan.org/pkg/babel-macedonian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `macedonian` as the main language, with `luatex`.

```tex
\documentclass[macedonian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ македонски

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-macedonian.png)