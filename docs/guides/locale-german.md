# German

This page offers basic guidance on typesetting a LaTeX document in the
German language using the Latin script.

## Support with the traditional way (`ldf`)

The German language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-german](https://ctan.org/pkg/babel-german)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `german` as the main language, with `luatex`.

```tex
\documentclass[german]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Deutsch

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-german.png)