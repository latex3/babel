# Interlingua

This page offers basic guidance on typesetting a LaTeX document in the
Interlingua language using the Latin script.

## Support with the traditional way (`ldf`)

The Interlingua language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-interlingua](https://ctan.org/pkg/babel-interlingua)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `interlingua` as the main language, with `luatex`.

```tex
\documentclass[interlingua]{article}

\usepackage[provide=*]{babel}

\begin{document}

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-interlingua.png)