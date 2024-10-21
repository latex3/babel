# Latin

This page offers basic guidance on typesetting a LaTeX document in the
Latin language using the Latin script.

## Support with the traditional way (`ldf`)

The Latin language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-latin](https://ctan.org/pkg/babel-latin)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `latin` as the main language, with `luatex`.

```tex
\documentclass[latin]{article}

\usepackage[provide=*]{babel}

\begin{document}

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-latin.png)