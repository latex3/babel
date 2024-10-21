# Breton

This page offers basic guidance on typesetting a LaTeX document in the
Breton language using the Latin script.

## Support with the traditional way (`ldf`)

The Breton language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-breton](https://ctan.org/pkg/babel-breton)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `breton` as the main language, with `luatex`.

```tex
\documentclass[breton]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ brezhoneg

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-breton.png)