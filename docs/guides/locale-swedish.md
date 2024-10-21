# Swedish

This page offers basic guidance on typesetting a LaTeX document in the
Swedish language using the Latin script.

## Support with the traditional way (`ldf`)

The Swedish language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-swedish](https://ctan.org/pkg/babel-swedish)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `swedish` as the main language, with `luatex`.

```tex
\documentclass[swedish]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ svenska

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-swedish.png)