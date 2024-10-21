# English

This page offers basic guidance on typesetting a LaTeX document in the
English language using the Latin script.

## Support with the traditional way (`ldf`)

The English language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-english](https://ctan.org/pkg/babel-english)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `english` as the main language, with `luatex`.

```tex
\documentclass[english]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ English

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-english.png)