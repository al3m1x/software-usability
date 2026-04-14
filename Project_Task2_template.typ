#set document(title: "Software Usability Project – Task 2")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  numbering: "1",
)
#set text(font: "New Computer Modern", size: 11pt, lang: "en")
#set heading(numbering: "1.")
#set par(justify: true, leading: 0.65em)
#show heading.where(level: 1): it => {
  v(1em)
  it
  v(0.4em)
}
#show heading.where(level: 2): it => {
  v(0.6em)
  it
  v(0.3em)
}

// Note box component
#let note(body) = block(
  fill: luma(235),
  stroke: (left: 3pt + rgb("#4a90d9")),
  inset: (x: 10pt, y: 7pt),
  radius: 2pt,
  width: 100%,
)[
  #text(style: "italic", size: 10pt)[#body]
]

// ── Title ──────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Software Usability Project – Task 2 Template]
  #v(0.4em)
  #text(size: 12pt, style: "italic")[
    Task 2: Evaluate accessibility (for various deficits) of a chosen piece of software.
  ]
]

#v(1.5em)
#line(length: 100%, stroke: 0.5pt)
#v(1em)

// ── 1. Software analysis ───────────────────────────────────────────────────
= Analysis of the Software / Prototype Under Investigation

#text(style: "italic")[Software:]

- *Nazwa:* Allegro (serwis internetowy)
- *Cel:* Największa polska platforma e-commerce typu marketplace, zawierająca rozbudowane bloki filtrów, interaktywne suwaki cenowe oraz dynamicznie ładujące się listy produktów.
- *Customers, users* (customer ≠ user) —
- *Context of use* —
- *Functionality* —
- *Non-functional requirements* —

// ── 2. User analysis ──────────────────────────────────────────────────────
= User Analysis

Identification of the target groups and their descriptions with regard to deficits they might have.

// ── 3. Accessibility study ────────────────────────────────────────────────
= Accessibility Study

== Purpose and Scope of the Study

Głównym celem niniejszego badania jest ocena dostępności platformy Allegro dla użytkowników z niepełnosprawnością ruchową, którzy korzystają wyłącznie z klawiatury (bez myszki). Ewaluacja ma na celu identyfikację barier cyfrowych, które mogą uniemożliwiać lub utrudniać samodzielne przeglądanie ofert i finalizację zakupu. Badanie przeprowadzono metodą systematycznej oceny przy użyciu listy kontrolnej opartej na standardzie Web Content Accessibility Guidelines (WCAG 2.1). Celem jest nie tylko wskazanie obszarów niespełniających kryteriów dostępności, ale również ocena użyteczności samej listy kontrolnej jako narzędzia ewaluacyjnego.

Zakres badania obejmuje następujące podstrony platformy Allegro:
- strona główna,
- strona wyników wyszukiwania (z panelem filtrów bocznych),
- strona szczegółów oferty,
- koszyk i proces składania zamówienia.

*Pytania badawcze (powiązane z kryteriami WCAG):*
- Czy wszystkie interaktywne elementy strony (linki, przyciski, filtry, suwaki cenowe) są obsługiwalne za pomocą klawiatury? (WCAG 2.1.1)
- Czy na stronie występują pułapki klawiaturowe - miejsca, z których użytkownik nie może wyjść klawiszem Tab lub Shift+Tab? (WCAG 2.1.2)
- Czy wskaźnik fokusu klawiatury (obrys zaznaczonego elementu) jest stale widoczny podczas nawigacji? (WCAG 2.4.7)
- Czy kolejność fokusowania elementów jest logiczna i zgodna z wizualnym układem strony? (WCAG 2.4.3)
- I pozostałe pytania z listy kontrolnej WCAG

*Metryki:*
- Liczba pytań kluczowych z listy kontrolnej WCAG z oceną negatywną.
- Liczba elementów interaktywnych niedostępnych z klawiatury (wynik negatywny dla WCAG 2.1.1).
- Liczba zidentyfikowanych pułapek klawiaturowych (wynik negatywny dla WCAG 2.1.2).
- Wskaźnik sukcesu zadania „dodaj przedmiot do koszyka" przy użyciu samej klawiatury (w %).

== Study Plan

Define which methods you are planning to use and how. Justify the choice.
Design the methods in detail.

== Study Execution

What is the sample, how many results were obtained, what went wrong, etc.

== Study Results

Detailed results and description.

// ── 4. Conclusions ────────────────────────────────────────────────────────
= Conclusions and Implications of the Study

What are the implications of the study for further development of the app.

#note[This section refers to the purpose of the study as defined before.]

// ── 5. Lessons learned ────────────────────────────────────────────────────
= Lessons Learned

What went well, what did you learn, what would you do differently.

#note[This section refers to your design of the accessibility study. Be critical!]
