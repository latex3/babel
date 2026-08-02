# What's new in babel 26.10

(dev)

After a hiatus of a couple of month, work on `babel` is resumed. 

## `tabular`

<span style="color:red;">⚠</span> **Important.**

For the reasons explained here, `tabular` was problematic with
right-to-left writing (RTL) and required some patching not always
leading to satisfatory results. Therefore and based on the principle of
minimal intervention, full RTL `tabular` stuff, with columns ordered
from right to left was made optional with `layout=tabular`.

With a recent change in the LaTeX kernel, one of whose purposes was to
improve the handling of bidi text, `tabular` now  behaves as
expected out of the box, and therefore what was (more or less) achieved
with `layout=tabular` becomes the default behaviour. Maybe some
fine-tuning is still necessary.

If for some reason you still need LTR columns with RTL text a new
option is provided: `layout=lrtabular`.

## Other changes

* Fix: Variant was ignored with BCP 47 tags.

