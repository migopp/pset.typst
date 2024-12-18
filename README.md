# pset.typst

A simple, customizable typst problem set template.

## Setup

Clone this repository.

The template functions reside in the `lib` directory. So as long as you copy that and include it in your document, you're good.

## Importing

At the top of your document:

```typst
#import "lib/lib.typ": *
```

For an actual example, see `example.typ`.

## Components

There are various components that ship with this template. In this section, I'll walk through some basic ideas.

The idea of this template is to be minimal and customizable. So, familiarizing yourself with these components may be useful.

### Title

This is the title section (heading) of the document. It contains the following fields by default:

- `title`
- `author`
- `class`
- `semester`

The names are quite self-explanatory. You can place a title like such:

```typst
#title(
    title: "Solved Examples 1",
    author: "Michael Goppert (mtg2447)",
    class: "CS 331H",
    semester: "Spring 2025",
)
```

All fields default to nil if you don't define them. It's probably best to define them.

If you want to customize the fields or how this looks, go to `lib/title.typ`.

### Shorthands

Shorthands are a set of simple expansions for convenience. There are very few that ship straight with the template, because I think which shorthands are useful depend highly on the usecase. It's likely best for the user to choose.

I may change my mind on this philosophy in the future.

For example, if you defined a `wlog` shorthand, as shown here:

```typst
#let wlog = "without loss of generality"
```

Then,

```
And #wlog A B C D ... // And without loss of generality A B C D ...
```

You can customize the given shorthands or write your own new ones at `lib/shorthands.typ`.

### Environments

This is one of the more useful parts of this template.

#### q

Each question is denoted with a `#q[]`. The scope encompasses the question and your answer. For example:

```typst
+ #q[
    Here's the question.

    #ans[Here's my answer.]
]
```

#### ans

This is a simple answer. Nothing special.

#### proof

This signifies that we are proving something for the answer.

```typst
+ #q[
    Prove something.

    #proof[Here's my proof.]
]
```

#### part

This indicates a subpart of a question. The idea is the same as `q`. Put the answer inside of `part`.

```typst
+ #q[
    Here's the main prompt for the question.

    // (a)
    #part[
        It's got a few subparts. Here's the first one. Prove something.

        #proof[Here's my awesome proof.]
    ]

    // (b)
    #part[
        And another proof. Prove something else.

        #proof[Here's another awesome proof.]
    ]
]
```

### Collaborators

This is just a string listing of all collaborators on the pset.

You can place a collaborators section like:

```typst
#collaborators(
    collaborators: "A, B, ...",
)
```

If you want to customize the fields or how this looks, go to `lib/collaborators.typ`.

## Customization

This template is highly customizable. Instructions on getting started are located in `lib/README.md`.

## Acknowledgements

This project is a set of tweaks based on the [`tinyset` template by SylvanFranklin](https://github.com/SylvanFranklin/tinyset).
