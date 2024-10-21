# Indonesian

This page offers basic guidance on typesetting a LaTeX document in the
Indonesian language using the Latin script.

## Support with the traditional way (`ldf`)

The Indonesian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-indonesian](https://ctan.org/pkg/babel-indonesian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `indonesian` as the main language, with `luatex`.

```tex
\documentclass[indonesian]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Indonesia

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-indonesian.png)