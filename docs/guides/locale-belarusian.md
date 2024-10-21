# Belarusian

This page offers basic guidance on typesetting a LaTeX document in the
Belarusian language using the Cyrillic script.

## Support with the traditional way (`ldf`)

The Belarusian language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See [babel-belarusian](https://ctan.org/pkg/babel-belarusian)
for further details.

## Support with `ini` locale file

Here is a minimal sample file with `belarusian` as the main language, with `luatex`.

```tex
\documentclass[belarusian]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{NewComputerModern10}

\begin{document}

Local name $=$ беларуская

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-belarusian.png)