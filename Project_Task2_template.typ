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

- *Nazwa:* Allegro - serwis internetowy e-commerce typu marketplace, analizowany w widoku desktopowym w przeglądarce.
- *Cel:* Umożliwienie użytkownikom swobodnego przeglądania ofert, precyzyjnego filtrowania wyników i porównywania cen na rozbudowanej platformie e-commerce, a także zapewnienie sprawnej realizacji procesu zakupowego, z uwzględnieniem dostępności dla osób z zaburzeniami wzroku i zaburzeniami poznawczymi.
- *Klienci, użytkownicy* (klient ≠ użytkownik): Użytkownikami są sprzedawcy oraz wszyscy kupujący, w tym osoby niewidome, słabowidzące oraz osoby z dysleksją i innymi zaburzeniami poznawczymi. Klientami pozostają sprzedawcy (płacący prowizje) oraz kupujący nabywający usługi premium.
- *Kontekst użycia*: Badanie skupia się na korzystaniu z serwisu internetowego Allegro w widoku desktopowym, w najnowszej dostępnej wersji przeglądarki Google Chrome, na komputerze lub laptopie, w warunkach domowych przez dwie grupy docelowe: (1) osoby niewidome i słabowidzące korzystające z czytników ekranu lub powiększaczy, (2) osoby z dysleksją i zaburzeniami poznawczymi korzystające ze standardowej przeglądarki. Ewaluacja obejmuje możliwość samodzielnego i efektywnego korzystania z serwisu w takim środowisku.
- *Funkcjonalności*: Opisy produktów i obrazy (dla niewidomych), system filtrów i wyszukiwarki, instrukcje i komunikaty błędów (dla dysleksji), wieloetapowy proces koszyka i logowania, suwaki cenowe i filtry dynamiczne.
- *Wymagania niefunkcjonalne*: Pełna zgodność interfejsu ze standardami Web Content Accessibility Guidelines (WCAG 2.1 poziom AA), w szczególności wymagania dotyczące kontrastu kolorów, wielkości tekstu, tekstów alternatywnych, struktury semantycznej HTML, jasności komunikatów i konsystencji nawigacji.

// ── 2. User analysis ──────────────────────────────────────────────────────
= User Analysis

Identification of the target groups and their descriptions with regard to deficits they might have.

// ── 3. Accessibility study ────────────────────────────────────────────────
= Accessibility Study

== Purpose and Scope of the Study

*Cel (Goal - GQM):* Analiza serwisu internetowego Allegro w widoku desktopowym, uruchamianego w najnowszej dostępnej wersji przeglądarki Google Chrome, pod kątem dostępności cyfrowej, w celu oceny zgodności wybranych widoków i procesów z kryteriami WCAG 2.1 AA oraz identyfikacji barier utrudniających samodzielne korzystanie z serwisu, z punktu widzenia osób niewidomych i słabowidzących korzystających z czytnika ekranu lub powiększenia oraz osób z dysleksją albo ograniczeniami poznawczymi, w kontekście domowego korzystania z serwisu na komputerze podczas wyszukiwania produktu, przeglądania oferty i przechodzenia przez koszyk do etapu poprzedzającego płatność.

Badanie ma charakter jakościowo-ilościowy. Część jakościowa obejmuje opis barier i ich wpływu na użytkownika, a część ilościowa obejmuje liczbę naruszeń, liczbę spełnionych kryteriów oraz porównanie problemów między badanymi grupami.

Zakres badania obejmuje następujące podstrony platformy Allegro:
- strona główna,
- strona wyników wyszukiwania (z panelem filtrów bocznych),
- strona szczegółów oferty,
- koszyk i proces składania zamówienia.

*Pytania i metryki (Questions and Metrics):*

- *Q1: Czy treści nietekstowe i struktura strony są możliwe do poprawnej interpretacji przez osoby korzystające z czytnika ekranu?* \
  *Metryki:* liczba obrazów bez tekstu alternatywnego lub z tekstem nieopisowym; liczba kontrolek bez dostępnej nazwy; liczba błędów hierarchii nagłówków; liczba elementów formularzy bez etykiet; liczba problemów wykrytych podczas przejścia czytnikiem ekranu.

- *Q2: Czy treści wizualne pozostają czytelne dla osób słabowidzących?* \
  *Metryki:* liczba elementów tekstowych z kontrastem poniżej 4.5:1; liczba elementów nietekstowych z kontrastem poniżej wymaganego poziomu; liczba widoków, które zachowują funkcjonalność przy powiększeniu tekstu do 200%; liczba elementów ucinanych lub nachodzących na siebie po powiększeniu.

- *Q3: Czy formularze, komunikaty błędów i instrukcje w procesie zakupu są zrozumiałe dla badanych grup?* \
  *Metryki:* liczba pól formularzy bez jednoznacznych instrukcji; liczba komunikatów błędów bez informacji, jak poprawić problem; liczba kroków procesu bez potwierdzenia aktualnego stanu; liczba miejsc, w których użytkownik może podjąć nieodwracalną decyzję bez jasnego ostrzeżenia.

- *Q4: Czy nawigacja i język serwisu są spójne i zrozumiałe dla osób z dysleksją lub ograniczeniami poznawczymi?* \
  *Metryki:* liczba niespójności w położeniu głównych elementów nawigacji między badanymi widokami; średnia długość zdań w instrukcjach i komunikatach; liczba niejasnych lub specjalistycznych określeń na 100 słów tekstu; liczba elementów rozpraszających uwagę w krytycznych krokach procesu.

- *Q5: Które z wybranych kryteriów WCAG 2.1 AA są spełnione, częściowo spełnione albo niespełnione w badanym zakresie?* \
  *Metryki:* liczba kryteriów spełnionych, częściowo spełnionych i niespełnionych; procent spełnienia listy kontrolnej; liczba problemów według poziomu istotności: krytyczny, istotny, drobny; liczba barier przypisanych do każdej z dwóch grup docelowych.

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
