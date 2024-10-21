# Afrikaans

This page offers basic guidance on typesetting a LaTeX document in the
Afrikaans language using the Latin script.

## Support with the traditional way (`ldf`)

The Afrikaans language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `afrikaans` as the main language, with `luatex`.

```tex
\documentclass[afrikaans]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ Afrikaans

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-afrikaans.png)