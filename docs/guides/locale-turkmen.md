# Turkmen

This page offers basic guidance on typesetting a LaTeX document in the
Turkmen language using the Latin script.

## Support with the traditional way (`ldf`)

The Turkmen language is supported in `babel` in the ‘classical’ way
based on a `ldf` file.

## Support with `ini` locale file

Here is a minimal sample file with `turkmen` as the main language, with `luatex`.

```tex
\documentclass[turkmen]{article}

\usepackage[provide=*]{babel}

\begin{document}

Local name $=$ türkmen dili

Chapter $=$ \chaptername

Today $=$ \today

\end{document}
```

![](../media/locale-turkmen.png)