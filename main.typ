#import "lib.typ": *

//#set text(font: "")
//#set text(font: "TeX Gyre Pagella")
//#set text(font: "Lato")
#show math.equation: set text(font: "STIX Two Math")
//#show math.equation: set text(font: "Lato Math")
//#show raw: set text(font: "Fira Code")

#show: book.with(
  title: "Exploring the Physical Manifestation of Humanity’s Subconscious Desires",
  subtitle: "A Practical Guide",
  date: datetime.today,
  author: "Shiv Shankar Dayal",
  main-color: rgb("#0064B0"),
  lang: "en",
  cover: image("./cp.svg"),
//  image-index: image(""),
  list-of-figure-title: "List of Figures",
  list-of-table-title: "List of Tables",
  supplement-chapter: "",
  supplement-part: "Part",
  part-style: 0,
  copyright: [
    Copyright © 2025 FSF.

    Licensed under the GNU FDLv2 (the “License”).
  ],
  lowercase-references: false,
  dedication: [Om Shivay Swaha!

    Idam Shivay Idann Mam!!

    (It is dedicated to Lord Shiv. It is his and not mine.)],
)

// Custom thmbox
#let solution(name: none, body) = {
  context{
    thmbox("solution","Solution",
stroke: (left: 4pt + green),
    radius: 0em,
    inset: 0.65em,
    namefmt: x => [*--- #x.*],
    separator: h(0.2em),
    titlefmt: x => text(fill: green, weight: "bold", x),
    fill: green.lighten(90%),
    base_level: 1)(name:name, body)
  }
}

#set heading(numbering: none)
#chapter("Preface", l: "Preface")
This is preface.

//#set page(numbering: "1")
//#counter(page).update(1)
#set heading(numbering: "1.1.1")

#part("Part One Title")

#chapter("Sectioning Examples", l: "chap1")
#index("Sectioning")

== Section Title
#index("Sectioning!Sections")

#lorem(50)
#footnote[Footnote example text...Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent porttitor arcu luctus,
imperdiet urna iaculis, mattis eros. Pellentesque iaculis odio vel nisl ullamcorper, nec faucibus ipsum molestie.]

#lorem(50)

=== Subsection Title
#index("Sectioning!Subsections")

#lorem(50)

#lorem(50)

#lorem(50)

==== Subsubsection Title
#index("Sectioning!Subsubsections")

#lorem(100)

===== Paragraph Title
#index("Sectioning!Paragraphs")
#lorem(50)
#lorem(50)
#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)

#heading(level:2, numbering: none, "Unnumbered Section", outlined: false)
#heading(level:3, numbering: none, "Unnumbered Subsection", outlined: false)
#heading(level:4, numbering: none, "Unnumbered Subsubsection", outlined: false)

// Chapter can also be defined in this way
#chapter("Sectioning Examples", l: "chap2")
//#update-heading-image(image: image("./orange2.jpg"))
//= In-text Element Examples

== Referencing Publications
#index("Citation")
This statement requires citation @Smith:2022jd; this one is more specific @Smith:2021qr[page.~162].
== Link Examples
#index("Links")
This is a URL link: #link("https://www.latextemplates.com")[LaTeX Templates]. This is an email link: #link("mailto:example@example.com")[example\@example.com]. This is a
monospaced URL link: https://www.LaTeXTemplates.com.
== Lists
#index("Lists")
Lists are useful to present information in a concise and/or ordered way.
=== Numbered List
#index("Lists!Numbered List")
+ First numbered item
  + First indented numbered item
  + Second indented numbered item
    + First second-level indented numbered item
    + Second second-level indented numbered item
2. Second numbered item
3. Third numbered item
=== Bullet Point List
#index("Lists!Bullet Points")
- First bullet point item
  - First indented bullet point item
  - Second indented bullet point item
    - First second-level indented bullet point item
- Second bullet point item
- Third bullet point item
=== Descriptions and Definitions
#index("Lists!Descriptions and Definitions")
/ Name: Definition
/ Word: Definition
/ Comment: Elaboration
== International Support
àáâäãåèéêëìíîïòóôöõøùúûüÿýñçˇcšž \
ÀÁÂÄÃÅÈÉÊËÌÍÎÏÒÓÔÖÕØÙÚÛÜŸÝÑ \
ßÇŒÆ ˇCŠŽ
== Ligatures
fi fj fl ffl ffi Ty

kjsf kjhh feh h gheoi g  gh ohgh e ghoi ghehgoihgghg
kajhg hg ghioeg ohg  gegjewg


wekjkgjkgkg gh ehg heioh foihionjk.dsvnjk kdkv

== Referencing Chapters<heading1>
#index("Referencing")
This statement references to another chapter @chap1. This statement references to another heading @heading1. This statement references to another heading @heading2.

#part("Part Two Title")

#chapter("Mathematics")

== Theorems
#index("Theorems")
=== Several equations<heading2>
#index("Theorems!Several equations")
This is a theorem consisting of several equations.
#theorem(name: "Name of the theorem")[
  In $E=bb(R)^n$ all norms are equivalent. It has the properties:
  $ abs(norm(bold(x)) - norm(bold(y))) <= norm(bold(x-y)) $
  $ norm(sum_(i=1)^n bold(x)_i) <= sum_(i=1)^n norm(bold(x)_i) quad "where" n "is a finite integer" $
]

=== Single Line
#index("Theorems!Single Line")
This is a theorem consisting of just one line.
#theorem()[
  A set $scr(D)(G)$  in dense in $L^2(G)$, $|dot|_0$.
]
== Definitions
#index("Definitions")
A definition can be mathematical or it could define a concept.
#definition(name: "Definition name")[
  Given a vector space $E$, a norm on $E$ is an application, denoted $norm(dot)$, $E$ in $bb(R)^+ = [0,+∞[$ such that:
  $ norm(bold(x)) = 0 arrow.r.double bold(x) = bold(0) $
  $ norm(lambda bold(x)) = abs(lambda) dot norm(bold(x)) $
  $ norm(bold(x) + bold(y)) lt.eq norm(bold(x)) + norm(bold(y))  $
]
== Notations
#index("Notations")

#notation()[
  Given an open subset $G$ of $bold(R)^n$, the set of functions $phi$ are:
  #v(0.5em, weak: true)
  + Bounded support $G$;
  + Infinitely differentiable;
  #v(0.5em, weak: true)
	a vector space is denoted by $scr(D)(G)$.
]
== Remarks
#index("Remarks")
This is an example of a remark.

#remark()[
  The concepts presented here are now in conventional employment in mathematics. Vector spaces are taken over the field $bb(K)=bb(R)$, however, established properties are easily extended to $bb(K)=bb(C)$.
]

== Corollaries
#index("Corollaries")
#corollary(name: "Corollary name")[
	The concepts presented here are now in conventional employment in mathematics. Vector spaces are taken over the field $bb(K)=bb(R)$, however, established properties are easily extended to $bb(K)=bb(C)$.
]
== Propositions
#index("Propositions")
=== Several equations
#index("Propositions!Several equations")

#proposition(name: "Proposition name")[
	It has the properties:
  $ abs(norm(bold(x)) - norm(bold(y))) <= norm(bold(x-y)) $
  $ norm(sum_(i=1)^n bold(x)_i) <= sum_(i=1)^n norm(bold(x)_i) quad "where" n "is a finite integer" $
]
=== Single Line
#index("Propositions!Single Line")

#proposition()[
  	Let $f,g in L^2(G)$; if $forall phi in scr(D) (G)$, $(f,phi)_0=(g,phi)_0$ then $f = g$.
]
== Examples
#index("Examples")
=== Equation Example
#index("Examples!Equation")
#example()[
  Let $G=\(x in bb(R)^2:|x|<3\)$ and denoted by: $x^0=(1,1)$; consider the function:

  $ f(x) = cases(
    e^(abs(x)) quad & "si" |x-x^0| lt.eq 1 slash 2,
    0 & "si" |x-x^0| gt 1 slash 2
  ) $

	The function $f$ has bounded support, we can take $A={x in bb(R)^2:|x-x^0| lt.eq 1 slash 2+ epsilon}$ for all $epsilon in lr(\] 0\;5 slash 2-sqrt(2) \[, size: #70%) $.
]

=== Text Example
#index("Examples!Text")

#example(name: "Example name")[
  Aliquam arcu turpis, ultrices sed luctus ac, vehicula id metus. Morbi eu feugiat velit, et tempus augue. Proin ac mattis tortor. Donec tincidunt, ante rhoncus luctus semper, arcu lorem lobortis justo, nec convallis ante quam quis lectus. Aenean tincidunt sodales massa, et hendrerit tellus mattis ac. Sed non pretium nibh. Donec cursus maximus luctus. Vivamus lobortis eros et massa porta porttitor.
]

== Exercises
#index("Exercises")
#exercise()[
  This is a good place to ask a question to test learning progress or further cement ideas into students' minds.
]
== Problems
#index("Problems")

#problem()[
  What is the average airspeed velocity of an unladen swallow?
]

== Vocabulary
#index("Vocabulary")

Define a word to improve a students' vocabulary.

#vocabulary(name: "Word")[
  Definition of word.
]

#chapter("Presenting Information and Results with a Long Chapter Title")//, image: image("./orange3.jpg"))
== Table
#index("Table")
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent porttitor arcu luctus, imperdiet
urna iaculis, mattis eros. Pellentesque iaculis odio vel nisl ullamcorper, nec faucibus ipsum molestie.
Sed dictum nisl non aliquet porttitor. Etiam vulputate arcu dignissim, finibus sem et, viverra nisl.
Aenean luctus congue massa, ut laoreet metus ornare in. Nunc fermentum nisi imperdiet lectus
tincidunt vestibulum at ac elit. Nulla mattis nisl eu malesuada suscipit.

#figure(
  table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [*Treatments*], [*Response 1*], [*Response 2*],
  [Treatment 1],
  [0.0003262],
  [0.562],
  [Treatment 2],
  [0.0015681],
  [0.910],
  [Treatment 3],
  [0.0009271],
  [0.296],
  ),
  caption: [Table caption.],
) <table>

Referencing @table in-text using its label.

== Figure
#index("Figure")

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent porttitor arcu luctus, imperdiet
urna iaculis, mattis eros. Pellentesque iaculis odio vel nisl ullamcorper, nec faucibus ipsum molestie.
Sed dictum nisl non aliquet porttitor. Etiam vulputate arcu dignissim, finibus sem et, viverra nisl.
Aenean luctus congue massa, ut laoreet metus ornare in. Nunc fermentum nisi imperdiet lectus
tincidunt vestibulum at ac elit. Nulla mattis nisl eu malesuada suscipit.

//#figure(
//  image("creodocs_logo.svg", width: 50%),
//  caption: [Figure caption.],
//) <figure>

//Referencing @figure in-text using its label and referencing @figure1 in-text using its label.

#figure(
  placement: top,
  table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [*Treatments*], [*Response 1*], [*Response 2*],
  [Treatment 1],
  [0.0003262],
  [0.562],
  [Treatment 2],
  [0.0015681],
  [0.910],
  [Treatment 3],
  [0.0009271],
  [0.296],
  ),
  caption: [Floating table.],
) <table1>

//#figure(
//  placement: bottom,
//  image("creodocs_logo.svg", width: 100%),
//  caption: [Floating figure.],
//) <figure1>

#my-bibliography( bibliography("sample.bib"))

#make-index(title: "Index")

#show: appendices.with("Appendices", hide-parent: false)

#chapter("Appendix Chapter Title")//, image: image("./orange2.jpg"))

== Appendix Section Title

#lorem(50)
#chapter("Appendix Chapter Title")//, image: image("./orange2.jpg"))

== Appendix Section Title

#lorem(50)
