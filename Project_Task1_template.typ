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

- *Nazwa:* Allegro - serwis internetowy e-commerce typu marketplace, analizowany w widoku desktopowym w przeglądarce.
- *Cel:* Umożliwienie użytkownikom swobodnego przeglądania ofert, precyzyjnego filtrowania wyników i porównywania cen na rozbudowanej platformie e-commerce typu marketplace, a także zapewnienie sprawnej i bezpiecznej realizacji wieloetapowego procesu zakupowego wraz z wyborem optymalnych metod płatności i dostawy.
- *Klienci, użytkownicy* (klient ≠ użytkownik): Użytkownikami są kupujący oraz sprzedawcy wystawiający przedmioty. Klientami (customers, generującymi przychód dla twórców) są przede wszystkim sprzedawcy (płacący prowizje od sprzedaży i opłaty za promowanie ofert) oraz kupujący opłacający usługi dodatkowe, np. Allegro Smart.
- *Kontekst użycia*: Badanie dotyczy kupujących korzystających z serwisu internetowego Allegro w widoku desktopowym, w najnowszej dostępnej wersji przeglądarki Google Chrome, na komputerze lub laptopie, w warunkach domowych. Użytkownik będzie samodzielnie wyszukiwał produkt, porównywał oferty i przechodził przez koszyk do etapu poprzedzającego płatność. Dla sprzedawców typowy kontekst użycia to praca biurowa/magazynowa przy obsłudze panelu sprzedawcy, ale ta część systemu nie jest objęta badaniem.
- *Funkcjonalności*: Zaawansowana wyszukiwarka z filtrowaniem i kategoryzacją, rekomendacje produktów, wirtualny koszyk, integracja z zewnętrznymi systemami płatności i dostawców, śledzenie przesyłek, system opinii dla ofert/sprzedawców oraz panel zarządzania zamówieniami.
- *Wymagania niefunkcjonalne*: Wysoka dostępność i skalowalność (obsługa dużego obciążenia), błyskawiczne czasy odpowiedzi przy wyszukiwaniu/filtrowaniu, bezpieczeństwo danych osobowych i transakcji oraz intuicyjna, responsywna nawigacja i dostępność dla różnych typów urządzeń.

// ── 2. User analysis ──────────────────────────────────────────────────────
= User Analysis

Identification of the target groups and their descriptions _(please note plural here)_.

// ── 3. Usability study ────────────────────────────────────────────────────
= Usability Study

== Purpose and Scope of the Study

*Cel (Goal - GQM):* Analiza serwisu internetowego Allegro w widoku desktopowym, uruchamianego w najnowszej dostępnej wersji przeglądarki Google Chrome, pod kątem użyteczności, w celu oceny skuteczności, efektywności, zrozumiałości nawigacji oraz satysfakcji użytkownika, z punktu widzenia nowych i okazjonalnych kupujących, w kontekście domowego korzystania z serwisu na komputerze podczas wyszukiwania produktu, porównywania ofert, korzystania z filtrów, zapoznawania się ze szczegółami oferty oraz przechodzenia przez koszyk do etapu poprzedzającego finalną płatność.

Badanie ma charakter mieszany: jakościowy, ponieważ analizuje zachowania, komentarze i problemy użytkowników podczas wykonywania zadań, oraz ilościowy, ponieważ zbiera mierzalne dane o czasie, skuteczności, liczbie błędów i poziomie satysfakcji.

*Pytania i metryki (Questions and Metrics):*

- *Q1: Czy użytkownicy rozumieją stronę główną i potrafią rozpocząć wyszukiwanie produktu bez dodatkowych instrukcji?* \
  *Metryki:* czas do rozpoczęcia pierwszego wyszukiwania; liczba błędnych kliknięć przed wpisaniem frazy; odsetek użytkowników, którzy samodzielnie znajdują wyszukiwarkę; ocena łatwości pierwszego kroku w skali SEQ 1-7.

- *Q2: Czy wyszukiwarka, sortowanie i filtry pomagają użytkownikom znaleźć odpowiednią ofertę?* \
  *Metryki:* wskaźnik sukcesu zadania znalezienia oferty spełniającej kryteria; czas od wpisania frazy do wyboru oferty; liczba niepoprawnie użytych lub cofniętych filtrów; liczba przypadków, w których użytkownik nie zauważa aktywnego filtra albo wyniku sortowania.

- *Q3: Czy użytkownicy potrafią poprawnie zinterpretować informacje na stronie oferty?* \
  *Metryki:* liczba poprawnych odpowiedzi na pytania o cenę całkowitą, termin dostawy, stan produktu, sprzedawcę i zwroty; liczba momentów zawahania przy szukaniu tych informacji; czas potrzebny na znalezienie informacji o dostawie i zwrotach.

- *Q4: Czy proces dodania produktu do koszyka i wyboru opcji dostawy oraz płatności jest zrozumiały?* \
  *Metryki:* wskaźnik ukończenia zadania do ekranu poprzedzającego płatność; liczba błędów nawigacyjnych w koszyku; liczba przypadków użycia pomocy moderatora; czas przejścia przez koszyk.

- *Q5: Jak użytkownicy oceniają ogólną użyteczność i komfort korzystania z Allegro po wykonaniu zadań?* \
  *Metryki:* wynik ankiety SUS; średnia ocena satysfakcji po zadaniach; liczba zgłoszonych problemów jakościowych; deklarowana pewność użytkownika, że wykonał zadanie poprawnie.


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
