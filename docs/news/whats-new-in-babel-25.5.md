# What's new in babel 25.4

**Draft** 

# Dutch

New transform `diaeresis.hyphen`. It removes the diaeresis above a vowel
if hyphenated just before.

# Shorthand groups

Most languages declaring shorthands create just a group named as the
language. A few, however, use a different name. Now, when a
`\languageshorthands` is found, it prints (only once) to the log file
something like this:
```
Package babel Info: 'uppersorbian' activates 'usorbian' shortands.
(babel)             Reported  on input line 8.
```

# Fixes

* Some wrong bidi text in \hbox.
* Extra space with pre/postpart and pre/postchapter captions and lazy loading. 
* LaTeX hook for newly defined font families.