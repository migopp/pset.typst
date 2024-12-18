# pset.typst lib

This is the implementation of the assets used for the template. This is where you will want to customize!

It looks like a lot of code, but it's really not that complicated. I've decided to put each individual part in its own file, so that each component is less intimidating.

## Structure

There is a `lib.typ` file. That is what you will include in your document. What's actually in there?

```typst
#import "prologue.typ": *
#import "epilogue.typ": *
#import "shorthands.typ": *
#import "environments.typ": *

// If you add any more files to the lib, make sure to import them here...
//
// e.g.,
// #import "filename.typ": *
```

It just includes some other files. _These_ are the files that contain code that you may want to modify.

```
lib
├── README.md
├── environments.typ
├── epilogue.typ
├── lib.typ
├── prologue.typ
└── shorthands.typ
```

## Customization

If you want to add a new component, create it in one of the existing files, or make a new file in here (`lib`).

Make sure to include it in `lib.typ`. I've left an example, just replace `filename.typ` with the file that you've added.

### Example

Let's say you wanted to add an `implies` shorthand (==>) to the template.

First, go to `shorthands.typ`

```typst
#let qed = [#v(0.2em)#h(1fr)$square.big$]
```

And add a new `let` command:

```typst
// ...
#let implies = $==>$
```

Then you are free to use `#implies` in the file that includes `lib/lib.typ`.
