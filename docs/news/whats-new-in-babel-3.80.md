# What's new in babel 3.80

*Draft*

## Option `safe`

<span style="color:red;">⚠</span> This option is now set by default to
`none` (see [What’s new in babel
3.74](https://latex3.github.io/babel/news/whats-new-in-babel-3.74.html)).
Remenber this option accepts the combination of `bib` and `ref` as a
way to force the former behavior.

The internal macros related to this option (containing `@safe@actives`)
will be preserved for compatibility, but very likely they will be
deprecated.

## Dates

There is a new calendar for `amharic`, named `ethiopic`. 

The `ini` locale for `hungarian` provides a new date variant named
`superessive`, which prints something like ‘2022. augusztus 30-án’.