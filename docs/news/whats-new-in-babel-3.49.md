# What's new in babel 3.49

2020-10-03

⚠ There is a severe bug in this version: in some cases, `main=` is no-op and silently ignored. Fixed in 3.50.

## Request `ini` files with class or package options

The standard way to set a language in LaTeX is by means of class or package options. Class options can be recognized by packages to act accordingly, and `babel` is not an exception. However, until now `ini` files had to be loaded following a separate mechanism, which was clearly not ideal, because it doesn't set the language as a global option, which may be required in many applications.

Now there is a package option to tell `babel` to load all or some languages passed as options with `\babelprovide` and not from the `ldf` file, with a few typical cases, as for instance:
```tex
\documentclass[hindi]{article}

\usepackage[provide=*]{babel}
```
Here `provide=*` means ‘load the main language with the `\babelprovide` mechanism instead of the `ldf` file’ using the basic features, which in this case means `import, main`. There are (currently) three options:
* `provide=*` is the option just explained, for the main language.
* `provide+=*` is the same for additional languages (ie, the main language is still the `ldf` file).
* `provide*=*` is the same for all languages, main and additional.

(The value will allow in the future other options, as for example `onchar` or `mapdigits`, but for the moment you must restrict yourself to `*`. Also, a similar tool for languages loaded on the fly can be useful, for the reasons explained in [issue #82](https://github.com/latex3/babel/issues/82), but I've left it to a later version.)

Note `babel` itself is not the responsible to ‘set’ which languages are
to be used in the document. It recognizes the options passed by the
user as class or package options.

## French spacing with `ini` files

This feature has been (at last) added. It behaves much like the settings for `lefthyphenmin` and `righthyphenmin` in the sense this setting is only applied in *newly defined* languages. So, it cannot be used to modify an `ldf` file, and there is a reason — it works in a somewhat different way, because the corresponding values are only switched when they have a standard one (eg, `.` is either 1000 or 3000, but not, say, 1001 or 2999), and the values before we enter a language are restored when we exit.

The original model followed in `ldf`'s is, as explained in the section ‘Known issues’ of the manual, problematic because the values are not always restored correctly in some (infrequent) cases.

## Other changes

* With `\babelposthyphenation` `^` and `$` are available. The are internally re-located to the correct position. (This is not true for `\babelprehyphenation`, where these two anchors must not be used.)
* `Babel` patches `fontspec` to avoid some misleading warnings about languages not available, which lead some people to think `babel` doesn't support these languages at all.
* Fix - `layout.lists=off` didn't work (#94)