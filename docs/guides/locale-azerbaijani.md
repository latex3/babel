# Azerbaijani

This page offers basic guidance on typesetting a LaTeX document in the
Azerbaijani language using the Latin script.

## Support with the traditional way (`ldf`)

The Azerbaijani language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-azerbaijani](https://ctan.org/pkg/babel-azerbaijani)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `azerbaijani` as the main language, with `luatex`.

```tex
\documentclass[azerbaijani]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ azərbaycan

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-azerbaijani.png)