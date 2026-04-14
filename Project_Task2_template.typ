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


// ── Title ──────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Software Usability Project – Task 2]
  #v(0.4em)
  #text(size: 12pt, style: "italic")[
    Task 2: Evaluate accessibility (for various deficits) of a chosen piece of software.
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

- *Nazwa:* Allegro (serwis internetowy)
- *Cel:* Umożliwienie użytkownikom swobodnego przeglądania ofert, precyzyjnego filtrowania wyników i porównywania cen na rozbudowanej platformie e-commerce, a także zapewnienie sprawnej realizacji procesu zakupowego, z uwzględnieniem dostępności dla osób z zaburzeniami wzroku i zaburzeniami poznawczymi.
- *Klienci, użytkownicy* (klient ≠ użytkownik): Użytkownikami są sprzedawcy oraz wszyscy kupujący, w tym osoby niewidome, słabowidzące oraz osoby z dysleksją i innymi zaburzeniami poznawczymi. Klientami pozostają sprzedawcy (płacący prowizje) oraz kupujący nabywający usługi premium.
- *Kontekst użycia*: Badanie skupia się na korzystaniu z platformy przed komputerem stacjonarnym w warunkach domowych przez dwie grupy docelowe: (1) osoby niewidome i słabowidzące korzystające z czytników ekranu lub powiększaczy, (2) osoby z dysleksją i zaburzeniami poznawczymi korzystające ze standardowych przeglądarek. Ewaluacja obejmuje możliwość samodzielnego i efektywnego korzystania z serwisu bez wspomagających technologii.
- *Funkcjonalności*: Opisy produktów i obrazy (dla niewidomych), system filtrów i wyszukiwarki, instrukcje i komunikaty błędów (dla dysleksji), wieloetapowy proces koszyka i logowania, suwaki cenowe i filtry dynamiczne.
- *Wymagania niefunkcjonale*: Pełna zgodność interfejsu ze standardami Web Content Accessibility Guidelines (WCAG 2.1 poziom AA), w szczególności wymagania dotyczące kontrastu kolorów, wielkości tekstu, tekstów alternatywnych, struktury semantycznej HTML, jasności komunikatów i konsystencji nawigacji.

// ── 2. User analysis ──────────────────────────────────────────────────────
= User Analysis

Identification of the target groups and their descriptions with regard to deficits they might have.

// ── 3. Accessibility study ────────────────────────────────────────────────
= Accessibility Study

== Purpose and Scope of the Study

Głównym celem niniejszego badania jest ocena dostępności platformy Allegro dla dwóch grup użytkowników: (1) osób niewidomych i słabowidzących korzystających z czytników ekranu, (2) osób z dysleksją i zaburzeniami poznawczymi. Ewaluacja ma na celu identyfikację bariér cyfrowych, które mogą uniemożliwiać lub utrudniać samodzielne przeglądanie ofert i finalizację zakupu dla tych grup. Badanie przeprowadzono metodą systematycznej oceny przy użyciu listy kontrolnej opartej na standardzie Web Content Accessibility Guidelines (WCAG 2.1), z uwzględnieniem kryterii istotnych dla wybranych grup docelowych.

Zakres badania obejmuje następujące podstrony platformy Allegro:
- strona główna,
- strona wyników wyszukiwania (z panelem filtrów bocznych),
- strona szczegółów oferty,
- koszyk i proces składania zamówienia.

*Pytania badawcze (powiązane z kryteriami WCAG dla wybranych grup):*

*Dla osób niewidomych/słabowidzących:*
- Czy wszystkie obrazy posiadają teksty alternatywne opisujące ich zawartość? (WCAG 1.1.1)
- Czy kontrast kolorów tekstu i tła spełnia minimalne wymagania (4.5:1 dla tekstu zwykłego)? (WCAG 1.4.3)
- Czy rozmiar tekstu jest dostępny do powiększenia do 200% bez utraty funkcjonalności? (WCAG 1.4.4)
- Czy struktura semantyczna HTML (headingi, listy, etykiety) jest prawidłowa, aby czytnik ekranu mógł prawidłowo interpretować stronę? (WCAG 1.3.1)

*Dla osób z dysleksją/zaburzeniami poznawczymi:*
- Czy komunikaty błędów w formularzach są jasne, konkretne i wskazują sposób naprawy? (WCAG 3.3.1, 3.3.4)
- Czy nawigacja serwisu jest konsystentna - elementy pojawiają się w tym samym miejscu na każdej stronie? (WCAG 3.2.3)
- Czy język na stronie jest prosty, bez niezbędnych żargnonów i skomplikowanych konstrukcji zdaniowych? (WCAG 3.1.5)
- Czy instrukcje dla złożonych procesów (np. checkout) są jasne, krok po kroku i zawierają potwierdzenia? (WCAG 3.3.2)

*Pytania dotyczące obu grup:*
- Które z wybranych punktów kontrolnych WCAG 2.1 są niespęłnione?

*Metryki:*

Badanie będzie się skupiać na całościowym objęciu i porównaniu wyników dla obu grup docelowych:

*Dla osób niewidomych/słabowidzących:*
- Liczba obrazów bez tekstów alternatywnych.
- Liczba elementów strony z niedostatecznym kontrastem kolorów (poniżej 4.5:1).
- Procent strony dostępny przy powiększeniu tekstu do 200%.
- Liczba błędów struktury semantycznej HTML wykrytych czytnikiem ekranu.

*Dla osób z dysleksją/zaburzeniami poznawczymi:*
- Liczba komunikatów błędów, które nie zawierają jasnych wskazówek do naprawy.
- Liczba niespójności w nawigacji (zmiana lokalizacji elementów między stronami).
- Średnia długość zdań.
- Liczba skomplikowanych słów na 100 słów tekstu.
- Liczba instrukcji dla procesów wieloetapowych, które brakuje lub są niejasne.

*Metryka całościowa:*
- Całkowita liczba kryterii WCAG 2.1 AA wybranych dla badania, które są spełnione vs niespełnione.
- Wskaźnik dostępności ogólnej dla obu grup (%).

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

// ── 5. Lessons learned ────────────────────────────────────────────────────
= Lessons Learned

What went well, what did you learn, what would you do differently.
