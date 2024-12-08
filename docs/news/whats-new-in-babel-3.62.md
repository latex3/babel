# What's new in babel 3.62

2021-07-19

Most changes in this version are minor improvements in the code. 

⚠ This version introduced a severe bug in XeTeX with CJK, fixed in 3.63.

## Unknown languages in auxiliary files

A warning is shown instead of raising an error if a language is not
found (for example, if there was a typo in the document).

## LaTeX hooks

⚠ This section has been modified with the release of version 3.64, after
some changes in the LaTeX hooking mechanism. Note it may require
latex-dev.

There is some partial support for the new LaTeX hooks. The hooks
predefined by `babel` has the same names as those of `\AddBabelHook`,
the main limitation being the parameters passed with the `babel`
mechanism are not allowed. The generic unlocalized hooks are
predefined, so that you can write:
```tex
\AddToHook{babel/*/afterextras}{\frenchspacing}
```
which is executed always after the extras for the language being
selected (and just before the non-localized hooks defined with
`\AddBabelHook`). Here the star means ‘all languages’.

In addition, locale-specific hooks in the form
`babel/language-name/hook-name` are *recognized* (executed just before
the localized `babel` hooks), but they are *not predefined*. You have
to do it yourself. For example, to set `\frenchspacing` only in
`bangla` (Bangla or Bengali):
```tex
\ActivateGenericHook{babel/bangla/afterextras}
\AddToHook{babel/bangla/afterextras}{\frenchspacing}
```

This mechanism does *not* replace the current one in `babel`. Its main
advantage is you can reconfigure `babel` even before loading it.

## Fixes

* Locale dependent quotes with CJK (#131).
* Babel and hyperref prevent changes to the LaTeX logo (#138).

## Option `provide` extended

*Requires LaTeX 2021-06-01, and still somewhat experimental.*

Instead of a star, the package option `provide=`can be followed by a
string to be passed to `\babelprovide` (rememer this option refers to
the main language). There is a difference – to separate options use
semicolons instead of commas. You may need to wrap the string with
braces. The option `import` is passed, too, even if not explicitly
requested. A simple example is:
```tex
\usepackage[provide = maparabic, telugu]{babel}
```
It loads the `ini` declarations for Telugu much like:
```tex
\babelprovide[main, import, maparabic]{babel}
```

There is an advantage in this way to load the language, namely, the
language is set as a package (or class) option, which is the standard
way to configure languages in LaTeX.


