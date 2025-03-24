# Japanese

<blockquote>
  <p><em>Improve this page! Feel free to draft a pull request <a href="https://github.com/latex3/babel/tree/docs/docs">on GitHub</a>.<br>
  <a href="https://www.google.com/search?q=site%3Alatex3.github.io%2Fbabel+Japanese">Search this site for more on Japanese</a>.</em></p>
</blockquote>

This page offers basic guidance on typesetting a LaTeX document in the
Japanese language using the Japanese script.

If you are creating documents primarily or exclusively in Japanese,
requiring advanced typesetting features, such as fine-grained control
over line breaking, font features, or vertical writing, it’s advisable
to use a framework like
[luatexja](https://ctan.org/pkg/luatexja?lang=en). But if you need to
create multilingual documents with frequent language switching or your
Japanese typesetting needs are relatively basic, `babel` can often be
enough.

## Support with the traditional way (`ldf`)

The Japanese language is supported in `babel` in the ‘classical’ way
based on a `ldf` file. See
[babel-japanese](https://ctan.org/pkg/babel-japanese) for further
details.

## Support with `ini` locale file

In `luatex` (the recommended engine), two transforms control line
breaking: `spacing.basic` and `linebreak.strict`. See [What’s new in
babel
24.9](https://latex3.github.io/babel/news/whats-new-in-babel-24.9.html).
Spacing between characters is set with the ‘provide’ key `intraspace`.

In `xetex` (which is currently discouraged), you can use the
‘interchar’ `linebreak.basic`.

See the manual for further details. See also [List of
counters](https://latex3.github.io/babel/guides/list-of-counters.html)
for the available Japanese counters.

Here is a minimal sample file with `japanese` as the main language
(assuming `luatex`).

```tex
\documentclass[japanese]{article}

\usepackage[provide=*]{babel}

\babelfont{rm}{Harano Aji Mincho}

\begin{document}

Local name $=$ 日本語

Preface $=$ \prefacename

Today $=$ \today

\end{document}
```

![](../media/locale-japanese.png)

## Contribute

If you are a native speaker or have expertise in this language, you can
contribute, make suggestion or request an enhancement by submitting a
pull request, opening an issue, or contacting the Babel maintainer with
the link above.