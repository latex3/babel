# What's new in babel 24.12

2024-10-20

## Manual revised (continued)

As in the previous version, outdated comments have been revised, certain
explanations expanded, and examples added.

## Multilingual document automation 

One on the aims of `babel` is to ease its integration with automated
document generation or conversion workflows (like
[Pandoc](https://pandoc.org/), [Sphynx](https://www.sphinx-doc.org/) or
[Asciidoctor](https://asciidoctor.org/)), and there has been steps in
this direction with, for example, lazy loading of locales (not
requiring explicit declaration in the preamble) and fonts (loaded only
if actually used in the document), as well as BCP-47 tags. (If you are
the maintainer of such a system, feel free to make feature requests or
ask for help.)

There are now a couple of tools to preset the options for locales even
before loading `babel`, by means of the LaTeX hooking mechanism. 

The hook `babel/presets` is executed just before locale files (either
`ini` or `ldf`) are loaded. Its functionality is, in fact, similar to
the `config` files, but it’s executed a bit later and there is no need
to a separate file.

`\PassOptionsToLocale` was devised for this hook and its purpose is
what its name suggests. For example, you can write in a class (with
`luatex`).
{% raw  %}
```tex
\AddToHook{babel/presets}{%
  \PassOptionsToLocale{mapdigits}{sanskrit}%
  \PassOptionsToLocale{transforms=punctuation.space}{french}%
}
```
{% endraw %}

Other candidates for `babel/presets` are `\AfterBabelLanguage` and
`\DeclareOption` (although the latter can be somewhat dangerous).

## Fixes

* Some numerals in Greek `ini` files printed the wrong stigma.
* Dates were missing with lazy locale loading.
* ‘Complex’ class options involving characters like `=`, `{`, `}`,
  mislead `babel`.






