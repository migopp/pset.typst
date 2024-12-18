// prologue.typ

#let prologue(
    title: "",
    author: "",
    class: "",
    semester: "",
) = {
    set text(font: "New Computer Modern Math")
    grid(
        columns: 2,
        gutter: 1fr,
        align(left)[
            #class - #semester
            // e.g., `CS 331H - Spring 2025`
        ],
        align(right)[
            #author
            // e.g., `Michael Goppert`
        ]
    )
    line(length: 100%)
    align(center)[
        *#title*
        // e.g., `Assignment X`
    ]
}
