# What's new in babel 24.2

2024-02-07

The list of locales in the manual (in fact, there were several lists) has
been reworked. 

## Fixes

There are some minor fixes: 
* `\cite` failed in some rare cases (#277).
* The `cancel` package didn't work sometimes in Hebrew (#279, fix
  provided by [Udi Fogiel](https://github.com/Udi-Fogiel)).
* `\selectfont` in math mode raised an error with `onchar` (#281).
* `scottish` was missing in the `ini` locale names

## Error messages

Error messages have to be useful and explanatory: they should not only
inform that something has gone wrong – they also have to give clues as
to how make it turn out well. For not to clutter the main code, a new
mechanism has been devised: the text of the messages (which can be as
long as we want) are stored in a separate file, which is only loaded 
when there is an error.

Currently you won't notice much difference, but in the future these
messages will be improved and others will be added in places where
potential errors are not addressed.