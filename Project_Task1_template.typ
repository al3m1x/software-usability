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


// ── Title ──────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Software Usability Project – Task 1]
  #v(0.4em)
  #text(size: 12pt, style: "italic")[
    Task 1: Evaluate usability and/or user experience of a chosen piece of software.
  ]
  #v(0.8em)
  Adrian Szwaczyk s193233 \
  Juliusz Radziszewski s193504 \
  Maciej Żuralski s193367 \
  Sebastian Kwaśniak s188807
]

#v(1.5em)
#line(length: 100%, stroke: 0.5pt)
#v(1em)

// ── 1. Software analysis ───────────────────────────────────────────────────
= Analysis of the Software / Prototype Under Investigation

#text(style: "italic")[Software:]

- *Nazwa:* Allegro (serwis internetowy / aplikacja mobilna)
- *Cel:* Umożliwienie użytkownikom swobodnego przeglądania ofert, precyzyjnego filtrowania wyników i porównywania cen na rozbudowanej platformie e-commerce typu marketplace, a także zapewnienie sprawnej i bezpiecznej realizacji wieloetapowego procesu zakupowego wraz z wyborem optymalnych metod płatności i dostawy.
- *Klienci, użytkownicy* (klient ≠ użytkownik): Użytkownikami są kupujący oraz sprzedawcy wystawiający przedmioty. Klientami (customers, generującymi przychód dla twórców) są przede wszystkim sprzedawcy (płacący prowizje od sprzedaży i opłaty za promowanie ofert) oraz kupujący opłacający usługi dodatkowe, np. Allegro Smart.
- *Kontekst użycia*: Dla kupujących: korzystanie w warunkach domowych na komputerze (przeglądarka) lub poza domem na urządzeniach mobilnych (aplikacja) w celu poszukiwania produktów, przeglądania okazji czy szybkich zakupów. Dla sprzedawców: praca biurowa/magazynowa skupiona na obsłudze panelu sprzedawcy przed komputerem stacjonarnym, obejmująca wystawianie ofert, zarządzanie cenami i obsługę zamówień.
- *Funkcjonalności*: Zaawansowana wyszukiwarka z filtrowaniem i kategoryzacją, rekomendacje produktów, wirtualny koszyk, integracja z zewnętrznymi systemami płatności i dostawców, śledzenie przesyłek, system opinii dla ofert/sprzedawców oraz panel zarządzania zamówieniami.
- *Wymagania niefunkcjonalne*: Wysoka dostępność i skalowalność (obsługa dużego obciążenia), błyskawiczne czasy odpowiedzi przy wyszukiwaniu/filtrowaniu, bezpieczeństwo danych osobowych i transakcji oraz intuicyjna, responsywna nawigacja i dostępność dla różnych typów urządzeń.

// ── 2. User analysis ──────────────────────────────────────────────────────
= User Analysis

Identification of the target groups and their descriptions _(please note plural here)_.

// ── 3. Usability study ────────────────────────────────────────────────────
= Usability Study

== Purpose and Scope of the Study

*Cel (Goal):* Analiza platformy Allegro pod kątem użyteczności z punktu widzenia okazjonalnego kupującego. Celem jest ocena płynności interakcji i efektywności podczas wyszukiwania konkretnego produktu z użyciem zaawansowanych filtrów oraz przejścia przez koszyk do finalizacji zamówienia.

*Pytania (Questions):*
- Jak szybko nowy lub okazjonalny użytkownik potrafi zastosować filtry (np. stan produktu, przedział cenowy, darmowa dostawa), aby znaleźć pożądany przedmiot?
- Jakie błędy nawigacyjne popełniają użytkownicy na etapie wyboru metody dostawy i płatności?

*Metryki (Metrics):*
- Czas wykonania zadania od wpisania hasła w wyszukiwarkę do kliknięcia „Kupuję i płacę" (w sekundach).
- Wskaźnik sukcesu zadania (procent użytkowników, którzy poprawnie przeszli cały proces).
- Liczba błędów lub zawahań (np. niezamierzone cofnięcie się do poprzednich kroków w koszyku).


== Study Plan

Define which methods you are planning to use and how. Justify the choice.

*Sample methods:* paper questionnaire, on-line survey, observational study,
shadowing, cognitive walkthrough, thinking-aloud protocol, etc.

Design the methods in detail (e.g. sample / group, plan, schedule, script,
content, how you track a user, …).

== Study Execution

What is the sample characteristics that was actually reached, from which target
groups, sample characteristics (demographics), how many results were obtained,
what went wrong, etc.

== Study Results

Detailed results and description.

// ── 4. Conclusions ────────────────────────────────────────────────────────
= Conclusions and Implications of the Study

What are the implications of the study for further development of the app.

// ── 5. Lessons learned ────────────────────────────────────────────────────
= Lessons Learned

What went well, what did you learn, what would you do differently.
