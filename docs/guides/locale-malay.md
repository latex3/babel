# Malay

This page offers basic guidance on typesetting a LaTeX document in the
Malay language using the Latin script.

## Support with the traditional way (`ldf`)

The Malay language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-malay](https://ctan.org/pkg/babel-malay)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `malay` as the main language, with `luatex`.

```tex
\documentclass[malay]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Melayu

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-malay.png)