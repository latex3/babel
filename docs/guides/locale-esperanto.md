# Esperanto

This page offers basic guidance on typesetting a LaTeX document in the
Esperanto language using the Latin script.

## Support with the traditional way (`ldf`)

The Esperanto language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-esperanto](https://ctan.org/pkg/babel-esperanto)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `esperanto` as the main language, with `luatex`.

```tex
\documentclass[esperanto]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ esperanto

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-esperanto.png)