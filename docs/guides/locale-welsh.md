# Welsh

This page offers basic guidance on typesetting a LaTeX document in the
Welsh language using the Latin script.

## Support with the traditional way (`ldf`)

The Welsh language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-welsh](https://ctan.org/pkg/babel-welsh)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `welsh` as the main language, with `luatex`.

```tex
\documentclass[welsh]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Cymraeg

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-welsh.png)