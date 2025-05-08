# What's new in babel 25.9

**Draft**

Until now, transforms could be only added after all the previouly defined
ones. However, particularly with predefined transform, adding them
before the other transforms can be useful. A new option `prepend` does
that. For example:
```
\babelprehyphenation[prepend]{hebrew}{-}{־} % hyphen → maqaf
```

