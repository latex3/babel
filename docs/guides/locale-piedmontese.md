# Piedmontese

This page offers basic guidance on typesetting a LaTeX document in the
Piedmontese language using the Latin script.

## Support with the traditional way (`ldf`)

The Piedmontese language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-piedmontese](https://ctan.org/pkg/babel-piedmontese)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `piedmontese` as the main language, with `luatex`.

```tex
\documentclass[piedmontese]{article}

\usepackage[provide=*]{babel}

\begin{document}

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-piedmontese.png)