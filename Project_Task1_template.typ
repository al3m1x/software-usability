#set document(title: "Software Usability Project – Task 1")
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

// Hint box component
#let hint(body) = block(
  fill: luma(235),
  stroke: (left: 3pt + rgb("#4a90d9")),
  inset: (x: 10pt, y: 7pt),
  radius: 2pt,
  width: 100%,
)[
  #text(style: "italic", size: 10pt)[*Hint:* #body]
]

// ── Title ──────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Software Usability Project – Task 1 Template]
  #v(0.4em)
  #text(size: 12pt, style: "italic")[
    Task 1: Evaluate usability and/or user experience of a chosen piece of software.
  ]
]

#v(1.5em)
#line(length: 100%, stroke: 0.5pt)
#v(1em)

// ── 1. Software analysis ───────────────────────────────────────────────────
= Analysis of the Software / Prototype Under Investigation

#text(style: "italic")[Software:]

- *Nazwa:* Allegro (serwis internetowy / aplikacja mobilna)
- *Cel:* Największa polska platforma e-commerce typu marketplace. Umożliwia użytkownikom przeglądanie ofert, filtrowanie wyników, porównywanie cen oraz realizację wieloetapowego procesu zakupowego wraz z wyborem metod płatności i dostawy.
- *Customers, users* (customer ≠ user) —
- *Context of use* —
- *Functionality* —
- *Non-functional requirements* —

// ── 2. User analysis ──────────────────────────────────────────────────────
= User Analysis

Identification of the target groups and their descriptions _(please note plural here)_.

// ── 3. Usability study ────────────────────────────────────────────────────
= Usability Study

== Purpose and Scope of the Study

*Cel (Goal):* Analiza platformy Allegro w celu oceny płynności interakcji i efektywności pod kątem użyteczności z punktu widzenia okazjonalnego kupującego w kontekście wyszukiwania konkretnego produktu z użyciem zaawansowanych filtrów i przejścia przez koszyk do finalizacji zamówienia.

*Pytania (Questions):*
- Jak szybko nowy lub okazjonalny użytkownik potrafi zastosować filtry (np. stan produktu, przedział cenowy, darmowa dostawa), aby znaleźć pożądany przedmiot?
- Jakie błędy nawigacyjne popełniają użytkownicy na etapie wyboru metody dostawy i płatności?

*Metryki (Metrics):*
- Czas wykonania zadania od wpisania hasła w wyszukiwarkę do kliknięcia „Kupuję i płacę" (w sekundach).
- Wskaźnik sukcesu zadania (procent użytkowników, którzy poprawnie przeszli cały proces).
- Liczba błędów lub zawahań (np. niezamierzone cofnięcie się do poprzednich kroków w koszyku).

#hint[Use the goal template from the GQM technique.]

== Study Plan

Define which methods you are planning to use and how. Justify the choice.

*Sample methods:* paper questionnaire, on-line survey, observational study,
shadowing, cognitive walkthrough, thinking-aloud protocol, etc.

Design the methods in detail (e.g. sample / group, plan, schedule, script,
content, how you track a user, …).

#hint[In the justification relate the chosen method to the goal.]

== Study Execution

What is the sample characteristics that was actually reached, from which target
groups, sample characteristics (demographics), how many results were obtained,
what went wrong, etc.

== Study Results

Detailed results and description.

#hint[This section is for raw results.]

// ── 4. Conclusions ────────────────────────────────────────────────────────
= Conclusions and Implications of the Study

What are the implications of the study for further development of the app.

#hint[This section refers to the purpose of the study as defined before.]

// ── 5. Lessons learned ────────────────────────────────────────────────────
= Lessons Learned

What went well, what did you learn, what would you do differently.

#hint[This section refers to your design of the UX/usability study. Be critical!]
