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

- *Nazwa platformy:* Allegro – popularny serwis e-commerce typu marketplace. Analizie poddano wyłącznie wersję desktopową uruchamianą w przeglądarce internetowej.
- *Główny cel:* Stworzenie przestrzeni, w której użytkownicy mogą sprawnie wyszukiwać, zestawiać i kupować towary od wielu różnych dostawców. W kontekście naszego badania, nadrzędnym celem jest weryfikacja, czy proces ten jest wolny od barier dla osób z ograniczeniami motorycznymi, poznawczymi oraz wzrokowymi.
- *Grupy odbiorców* (klient ≠ użytkownik): Klientami biznesowymi platformy są sprzedawcy ponoszący koszty prowizji oraz konsumenci wykupujący pakiety premium (np. Smart). Użytkownikami są wszyscy odwiedzający portal w celu dokonania zakupów. Nasze badanie koncentruje się na użytkownikach ze specyficznymi potrzebami: osobach z dysleksją, osobach słabowidzących, niewidomych oraz z niepełnosprawnością ruchową.
- *Środowisko i kontekst użycia:* Testy dotyczą obsługi platformy na komputerze osobistym (w przeglądarce Google Chrome). Scenariusz zakłada wykorzystanie technologii wspierających, takich jak programy czytające ekran (np. NVDA), lupy systemowe czy nawigacja oparta wyłącznie na klawiaturze. Z serwisu korzysta się zazwyczaj w warunkach domowych podczas planowania zakupów.
- *Kluczowe funkcje:* Narzędzie wyszukiwania, rozbudowany system filtrowania i sortowania ofert, widoki szczegółowe produktów (zawierające opisy i zdjęcia), panel logowania, wirtualny koszyk oraz ścieżka wyboru metod płatności i dostarczenia przesyłki.
- *Wymagania niefunkcjonalne (dostępność):* Zgodność interfejsu z wytycznymi Web Content Accessibility Guidelines (WCAG w wersji 2.1, poziom AA). Wymaga to między innymi zachowania odpowiednich kontrastów, umożliwienia bezmyszkowej nawigacji, poprawnego działania czytników ekranowych oraz zachowania czytelności przy powiększeniu widoku do 200%.

// ── 2. User analysis ──────────────────────────────────────────────────────
= User Analysis

W ramach analizy dostępności (accessibility), wyodrębniono trzy główne grupy użytkowników platformy, które zmagają się ze specyficznymi trudnościami:

*1. Użytkownicy z niepełnosprawnością wzroku (Visually Impaired Users)*
- *Charakterystyka:* Do tej grupy zaliczają się osoby niewidome oraz osoby ze znacznym osłabieniem wzroku (np. z powodu zaćmy czy jaskry). Wymagają one wsparcia w postaci czytników ekranu lub oprogramowania silnie powiększającego interfejs.
- *Wymagania wobec platformy:* Obecność opisowych tekstów alternatywnych dla wszelkich grafik, bardzo wysoki kontrast (szczególnie w przypadku istotnych danych jak koszty wysyłki), logiczna i semantyczna struktura nagłówków w kodzie HTML oraz responsywność pozwalająca na duże powiększenie strony bez nakładania się na siebie kafelków i tekstów.

*2. Użytkownicy z ograniczeniami motorycznymi (Motor Impaired Users)*
- *Charakterystyka:* Osoby, u których występują trudności z precyzyjnym sterowaniem myszką (np. z powodu drżenia rąk, chorób stawów lub paraliżu). Często korzystają z nawigacji klawiszowej (głównie klawisz Tab) lub specjalistycznych przełączników.
- *Wymagania wobec platformy:* Możliwość przejścia przez cały proces zakupowy wyłącznie przy pomocy klawiatury. Niezbędny jest wyraźnie widoczny wskaźnik aktywności (focus), odpowiednio duże obszary klikalne oraz całkowity brak pułapek klawiaturowych (sytuacji, w których użytkownik nie może opuścić danego elementu, np. okna pop-up).

*3. Użytkownicy z trudnościami poznawczymi (Cognitive and Learning Difficulties)*
- *Charakterystyka:* Osoby z dysleksją lub zaburzeniami koncentracji, które mogą mieć problemy ze zrozumieniem skomplikowanych i przeładowanych bodźcami interfejsów.
- *Wymagania wobec platformy:* Przejrzyste komunikaty błędów z jasnymi instrukcjami ich poprawy, spójna i przewidywalna nawigacja na każdej podstronie, minimalizacja agresywnych reklam odciągających uwagę oraz intuicyjne, krokowe prowadzenie przez etap finalizacji zamówienia w koszyku.

// ── 3. Accessibility study ────────────────────────────────────────────────
= Accessibility Study

== Purpose and Scope of the Study

*Cel badania (Purpose):* Naszym zadaniem jest ewaluacja cyfrowej dostępności platformy Allegro pod kątem zdefiniowanych grup użytkowników. Zweryfikujemy, czy główne elementy interfejsu spełniają wytyczne standardu WCAG 2.1 (AA). Pozwoli to zlokalizować potencjalne blokady technologiczne utrudniające samodzielne zakupy osobom z niepełnosprawnościami. Badanie opiera się na podejściu jakościowo-ilościowym: zidentyfikujemy konkretne bariery (jakość) oraz podsumujemy ogólny poziom zgodności w ujęciu liczbowym i statystycznym.

*Zakres analizy (Scope):* Przetestujemy podstawową ścieżkę użytkownika, skupiając się na czterech głównych widokach:
1. Ekran główny z modułem wyszukiwarki,
2. Lista wyników wraz z panelem bocznych filtrów,
3. Detale wybranej oferty,
4. Koszyk zakupowy oraz formularz dostawy i płatności.

*Metryki badawcze (Questions and Metrics):*
- *Q1: Czy interfejs jest w pełni użyteczny dla osób nawigujących wyłącznie klawiaturą?* \
  *Metryki badawcze:* liczba zidentyfikowanych pułapek klawiaturowych; odsetek kluczowych funkcji niemożliwych do aktywacji klawiszem Tab; występowanie i widoczność ramki fokusu na aktywnych przyciskach.
- *Q2: Czy architektura informacji jest poprawnie interpretowana przez czytniki ekranu?* \
  *Metryki badawcze:* ilość grafik informacyjnych pozbawionych opisów alternatywnych; braki powiązań między etykietami a polami formularzy; błędy w logicznym układzie nagłówków (H1, H2, itd.).
- *Q3: Czy szata graficzna i formularze są przyjazne dla osób z dysleksją i słabowidzących?* \
  *Metryki badawcze:* liczba tekstów nieosiągających minimalnego kontrastu (4.5:1); błędy renderowania przy powiększeniu interfejsu do 200%; ilość niejasnych komunikatów w procesie zgłaszania błędów walidacji.
- *Q4: Jaki jest zbiorczy poziom dostępności cyfrowej dla analizowanego procesu?* \
  *Metryki badawcze:* zsumowana liczba kryteriów zaliczonych, częściowo zaliczonych oraz oblanych; ogólny odsetek zgodności ze standardem; podział wykrytych usterek ze względu na ich krytyczność; liczba punktów spornych między ewaluatorami przed ostatecznymi ustaleniami.

== Study Plan

*Metodologia:* Zdecydowaliśmy się na wykorzystanie Ewaluacji Eksperckiej wspartej Listą Kontrolną (Checklist-based Expert Evaluation). Obejmuje ona ręczny audyt interfejsu połączony ze skanowaniem automatycznym pod kątem wymagań WCAG 2.1.

*Uzasadnienie wyboru:* Praca z ustandaryzowaną listą daje pewność, że badanie będzie powtarzalne, mierzalne i obiektywne. W kontekście założeń projektowych jest to optymalne podejście, pozwalające efektywnie i etycznie wykryć najpoważniejsze problemy dostępnościowe bez konieczności angażowania respondentów ze szczególnymi potrzebami.

*Założenia projektowe (Study design):*
1. *Narzędzie główne:* Posłużymy się oficjalną matrycą do badania dostępności cyfrowej. Aby zachować realistyczne ramy czasowe projektu, ocenie poddamy jedynie zagadnienia z poziomu podstawowego (basic) i średniego (intermediate), rezygnując z dogłębnej analizy zaawansowanych skryptów.
2. *Zaplecze techniczne:*
   - Darmowy program NVDA symulujący odbiór strony przez osoby niewidome,
   - Rozszerzenia przeglądarkowe (WAVE oraz Axe DevTools) do błyskawicznego wyłapywania błędów semantycznych i kolorystycznych,
   - Przeglądarka internetowa testowana wyłącznie bez użycia urządzenia wskazującego.
3. *Sposób realizacji (Triangulacja):* Każda z czterech osób w zespole niezależnie przeprowadzi inspekcję czterech podstron, zaznaczając na swoim arkuszu zgodność z każdym punktem listy (Spełnia / Nie spełnia / Nie dotyczy).
4. *Podsumowanie wyników:* Na koniec zespół zestawi swoje indywidualne arkusze. W przypadku rozbieżnych ocen, dany element interfejsu zostanie sprawdzony ponownie i wspólnie przedyskutowany, aby wypracować ostateczną i najbardziej rzetelną ocenę błędu.

*Harmonogram prac badawczych (Study Schedule):*
- *Etap 1 (Przygotowawczy):* Wybór i adaptacja adekwatnej listy weryfikacyjnej WCAG 2.1. Konfiguracja sprzętu oraz instalacja niezbędnych wtyczek i technologii asystujących.
- *Etap 2 (Audyt indywidualny):* Każdy z badaczy samodzielnie ocenia wskazane widoki platformy, szczegółowo wypełniając własną kartę ocen.
- *Etap 3 (Konsolidacja wyników):* Zebranie danych z czterech arkuszy w jedną bazę. Wyłonienie pytań konfliktowych (rozbieżności w zespole) i wspólne obrady mające na celu ustalenie jednolitego stanowiska.
- *Etap 4 (Tworzenie raportu):* Kategoryzacja znalezionych błędów, obliczenie statystyk zgodności (metryki sumaryczne) oraz opracowanie końcowych wniosków i porad dotyczących naprawy interfejsu.

== Study Execution

// To be filled out after conducting the evaluation.
// What is the sample, how many results obtained, what went wrong etc.

== Study Results

// To be filled out after conducting the evaluation.
// Detailed results and description.

// ── 4. Conclusions ────────────────────────────────────────────────────────
= Conclusions and Implications of the Study

// To be filled out after conducting the evaluation.
// What are the implications of the study for further development of the app.

// ── 5. Lessons learned ────────────────────────────────────────────────────
= Lessons Learned

// To be filled out after conducting the evaluation.
// What went well, what did you learn, what would you do differently.