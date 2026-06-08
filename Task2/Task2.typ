#set document(title: "Software Usability Project - Task 2")
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
  #text(size: 16pt, weight: "bold")[Software Usability Project - Task 2]
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

- *Nazwa platformy:* Allegro - popularny serwis e-commerce typu marketplace. Analizie poddano wyłącznie wersję desktopową uruchamianą w przeglądarce internetowej.
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

*Cel badania (Purpose):* Naszym zadaniem jest ewaluacja cyfrowej dostępności platformy Allegro pod kątem zdefiniowanych grup użytkowników. Zweryfikujemy, czy główne elementy interfejsu spełniają wytyczne standardu WCAG 2.1 (AA). Pozwoli to zlokalizować potencjalne blokady technologiczne utrudniające samodzielne zakupy osobom z niepełnosprawnościami. Badanie opiera się na podejściu jakościowo-ilościowym: zidentyfikujemy konkretne bariery (jakość) oraz podsumujemy ogólny poziom zgodności w ujęciu liczbowym.

*Zakres analizy (Scope):* Przetestujemy podstawową ścieżkę użytkownika, skupiając się na czterech głównych widokach:
1. Ekran główny z modułem wyszukiwarki,
2. Lista wyników wraz z panelem bocznych filtrów,
3. Detale wybranej oferty,
4. Koszyk zakupowy oraz formularz dostawy i płatności.

*Metryki badawcze (Questions and Metrics):*
- *Q1: Czy interfejs jest w pełni użyteczny dla osób nawigujących wyłącznie klawiaturą?* \
  *Metryki badawcze:* liczba zidentyfikowanych pułapek klawiaturowych; odsetek kluczowych funkcji niemożliwych do aktywacji klawiszem Tab; występowanie i widoczność ramki fokusu na aktywnych przyciskach.
- *Q2: Czy architektura informacji jest poprawnie interpretowana przez czytniki ekranu?* \
  *Metryki badawcze:* liczba grafik informacyjnych pozbawionych opisów alternatywnych; braki powiązań między etykietami a polami formularzy; błędy w logicznym układzie nagłówków (H1, H2, itd.).
- *Q3: Czy szata graficzna i formularze są przyjazne dla osób z dysleksją i słabowidzących?* \
  *Metryki badawcze:* liczba tekstów nieosiągających minimalnego kontrastu (4.5:1); błędy renderowania przy powiększeniu interfejsu do 200%; liczba niejasnych komunikatów w procesie zgłaszania błędów walidacji.
- *Q4: Jaki jest zbiorczy poziom dostępności cyfrowej dla analizowanego procesu?* \
  *Metryki badawcze:* zsumowana liczba kryteriów zaliczonych, częściowo zaliczonych oraz oblanych; ogólny odsetek zgodności ze standardem; podział wykrytych usterek ze względu na ich krytyczność; liczba punktów spornych między ewaluatorami przed ostatecznymi ustaleniami.

== Study Plan

*Metodologia:* Zastosujemy ewaluację ekspercką dostępności opartą na liście kontrolnej WCAG 2.1 na poziomie AA, wspartą testami manualnymi i narzędziami automatycznymi. Badanie nie będzie polegało wyłącznie na automatycznym skanowaniu strony, ponieważ narzędzia takie jak WAVE i Axe DevTools nie wykrywają wszystkich problemów dostępności, np. jakości tekstów alternatywnych, logiczności kolejności fokusu czy zrozumiałości komunikatów.

Lista kontrolna zostanie zbudowana na podstawie wybranych kryteriów WCAG 2.1 AA istotnych dla analizowanej ścieżki zakupowej:
- *1.1.1 Non-text Content* - obecność i sensowność tekstów alternatywnych dla grafik informacyjnych.
- *1.2.2 Captions (Prerecorded)* - dostępność napisów rozszerzonych dla materiałów wideo.
- *1.3.1 Info and Relationships* - poprawna struktura nagłówków, etykiet i relacji między elementami formularzy.
- *1.3.2 Meaningful Sequence* - logiczna kolejność odczytu treści przez technologie asystujące (np. NVDA).
- *1.3.5 Identify Input Purpose* - wsparcie atrybutów `autocomplete` określających przeznaczenie pól formularzy.
- *1.4.1 Use of Color* - przekazywanie informacji wizualnych nie opiera się wyłącznie na kolorze.
- *1.4.3 Contrast (Minimum)* - kontrast tekstu i istotnych elementów interfejsu minimum 4.5:1.
- *1.4.4 Resize Text* - możliwość korzystania ze strony przy powiększeniu tekstu lub interfejsu do 200%.
- *1.4.5 Images of Text* - unikanie tekstu w postaci grafik na rzecz stylizowanego tekstu HTML/CSS.
- *1.4.10 Reflow* - responsywność interfejsu eliminująca konieczność przewijania ekranu w poziomie.
- *1.4.11 Non-text Contrast* - odpowiedni kontrast (minimum 3:1) dla ważnych elementów nietekstowych (np. ikony).
- *1.4.12 Text Spacing* - zachowanie czytelności i struktury po powiększeniu odstępów między wierszami/literami.
- *2.1.1 Keyboard* - możliwość obsługi kluczowych funkcji wyłącznie za pomocą klawiatury.
- *2.1.2 No Keyboard Trap* - brak sytuacji, w których użytkownik nie może opuścić elementu interfejsu klawiaturą.
- *2.2.1 Timing Adjustable* - możliwość wydłużenia przez użytkownika limitu czasu sesji.
- *2.4.1 Bypass Blocks* - mechanizm (tzw. "skip link") pozwalający na pominięcie powtarzających się bloków nawigacji.
- *2.4.2 Page Titled* - unikalne i opisowe tytuły każdej podstrony ułatwiające orientację.
- *2.4.3 Focus Order* - logiczna kolejność przechodzenia fokusu przez elementy strony.
- *2.4.4 Link Purpose (In Context)* - ostrzeżenie przed otwarciem nowego okna/zakładki w przeglądarce.
- *2.4.5 Multiple Ways* - dostępność wielu dróg (np. wyszukiwarka, kategorie) na odnalezienie strony.
- *2.4.6 Headings and Labels* - jasne, zrozumiałe i trafne opisy nagłówków i etykiet.
- *2.4.7 Focus Visible* - widoczny wskaźnik fokusu na aktywnych elementach.
- *3.2.3 Consistent Navigation* - spójny wygląd i działanie mechanizmów nawigacyjnych na przestrzeni całego serwisu.
- *3.3.1 Error Identification* - jasne wskazywanie błędów w formularzach.
- *3.3.2 Labels or Instructions* - obecność czytelnych etykiet i instrukcji przy polach formularzy.
- *4.1.2 Name, Role, Value* - poprawna interpretacja przycisków, pól i kontrolek przez technologie asystujące.

Do każdego pytania kontrolnego przypiszemy ocenę: *Spełnia*, *Nie spełnia* albo *Nie dotyczy*. Przypadki częściowe zostaną opisane w komentarzach do problemów oraz w rozbieżnościach między ewaluatorami. Dla każdego wykrytego problemu zapiszemy widok, opis bariery, przewidywany wpływ na wykonanie zadania oraz rekomendację naprawczą.

*Uzasadnienie wyboru:* Ewaluacja ekspercka z checklistą WCAG jest odpowiednia dla tego projektu, ponieważ pozwala systematycznie sprawdzić dostępność tej samej ścieżki zakupowej, która była analizowana w Task 1 pod kątem użyteczności. Dzięki temu możemy porównać, czy elementy problematyczne dla użytkowników okazjonalnych są również barierami dla osób z deficytami wzrokowymi, motorycznymi lub poznawczymi. Połączenie metod manualnych i automatycznych zwiększa rzetelność badania. WAVE i Axe DevTools pozwolą szybko wykryć część błędów technicznych, np. problemy z kontrastem, brakujące etykiety lub naruszenia struktury HTML. Test klawiaturą pozwoli ocenić dostępność dla osób z ograniczeniami motorycznymi. NVDA zostanie wykorzystane do sprawdzenia, czy struktura strony, formularze, przyciski i komunikaty są zrozumiałe dla użytkownika korzystającego z czytnika ekranu. Manualna ocena będzie konieczna tam, gdzie samo narzędzie nie potrafi ocenić jakości doświadczenia użytkownika.

*Założenia projektowe (Study design):*
1. *Narzędzie główne:* Posłużymy się oficjalną matrycą do badania dostępności cyfrowej. Aby zachować realistyczne ramy czasowe projektu, ocenie poddamy jedynie zagadnienia z poziomu podstawowego (basic) i średniego (intermediate), rezygnując z dogłębnej analizy zaawansowanych skryptów.
2. *Zaplecze techniczne:*
   - Darmowy program NVDA symulujący odbiór strony przez osoby niewidome,
   - Rozszerzenia przeglądarkowe (WAVE oraz Axe DevTools) do błyskawicznego wyłapywania błędów semantycznych i kolorystycznych,
   - Przeglądarka internetowa testowana wyłącznie bez użycia urządzenia wskazującego.
3. *Sposób realizacji (Triangulacja):* Każda z czterech osób w zespole niezależnie przeprowadzi inspekcję czterech podstron, zaznaczając na swoim arkuszu zgodność z każdym punktem listy (Spełnia / Nie spełnia / Nie dotyczy).
4. *Podsumowanie wyników:* Na koniec zespół zestawi swoje indywidualne arkusze. W przypadku rozbieżnych ocen, dany element interfejsu zostanie sprawdzony ponownie i wspólnie przedyskutowany, aby wypracować ostateczną i najbardziej rzetelną ocenę błędu.

*Scenariusz audytu dostępności:* Audyt zostanie przeprowadzony na tej samej podstawowej ścieżce zakupowej, która była analizowana w Task 1. Dzięki temu wyniki badania dostępności będzie można bezpośrednio odnieść do wcześniejszych obserwacji użyteczności.
1. *Strona główna i wyszukiwanie:*
   - otwarcie strony głównej Allegro,
   - przejście do pola wyszukiwania wyłącznie klawiaturą,
   - wpisanie frazy "mysz komputerowa",
   - uruchomienie wyszukiwania,
   - sprawdzenie widoczności fokusu, etykiety pola wyszukiwania, działania przycisku wyszukiwania oraz poprawności odczytu elementów przez NVDA.
2. *Lista wyników i filtry:*
   - przejście po elementach listy wyników za pomocą klawiatury,
   - ustawienie filtrów: producent Logitech, stan nowy, typ myszy bezprzewodowa, kolor szary, cena od 40 zł do 90 zł,
   - ustawienie dodatkowych filtrów: Allegro Smart, dostawa do paczkomatu InPost, Super Sprzedawca,
   - sortowanie wyników według ceny z dostawą od najniższej,
   - sprawdzenie kolejności fokusu, dostępności kontrolek filtrów, kontrastu tekstów, zrozumiałości etykiet i działania z czytnikiem ekranu.
3. *Strona oferty:*
   - otwarcie pierwszej oferty spełniającej kryteria,
   - odnalezienie nazwy produktu, ceny, kosztu dostawy, terminu dostawy, oceny sprzedawcy i informacji o zwrotach,
   - sprawdzenie struktury nagłówków, opisów grafik, czytelności informacji, kontrastu oraz tego, czy kluczowe informacje są dostępne dla NVDA.
4. *Koszyk i formularze dostawy/płatności:*
   - dodanie produktu do koszyka,
   - przejście do koszyka,
   - wybór dostawy do paczkomatu InPost,
   - wybór metody płatności BLIK,
   - zatrzymanie się przed finalnym potwierdzeniem zamówienia,
   - sprawdzenie etykiet pól formularzy, komunikatów, obsługi klawiaturą, kolejności fokusu oraz możliwości opuszczenia popupów i modalnych okien.
5. *Test powiększenia i czytelności:*
   - powtórzenie kluczowych ekranów przy powiększeniu widoku do 200%,
   - sprawdzenie, czy teksty, przyciski, filtry, koszyk i formularze nie nachodzą na siebie,
   - ocena, czy użytkownik może nadal wykonać główną ścieżkę zakupową bez utraty informacji lub funkcjonalności.

*Skala oceny problemów:* Każdy wykryty problem zostanie przypisany do jednej z trzech kategorii krytyczności:
- *Krytyczny:* problem uniemożliwia wykonanie kluczowego kroku, np. brak możliwości dodania produktu do koszyka za pomocą klawiatury.
- *Istotny:* problem znacząco utrudnia wykonanie zadania, ale istnieje obejście, np. niejasna kolejność fokusu albo słabo opisany przycisk.
- *Drobny:* problem obniża komfort korzystania, ale nie blokuje zadania, np. pojedynczy tekst o zbyt niskim kontraście poza główną ścieżką.

Wyniki zostaną zestawione w tabeli zawierającej: kryterium WCAG, badany widok, wynik oceny, opis problemu, dotkniętą grupę użytkowników, krytyczność oraz rekomendację poprawy.

*Harmonogram prac badawczych (Study Schedule):*
- *Etap 1 (Przygotowawczy):* Wybór i adaptacja adekwatnej listy weryfikacyjnej WCAG 2.1. Konfiguracja sprzętu oraz instalacja niezbędnych wtyczek i technologii asystujących.
- *Etap 2 (Audyt indywidualny):* Każdy z badaczy samodzielnie ocenia wskazane widoki platformy, szczegółowo wypełniając własną kartę ocen.
- *Etap 3 (Konsolidacja wyników):* Zebranie danych z czterech arkuszy w jedną bazę. Wyłonienie pytań konfliktowych (rozbieżności w zespole) i wspólne obrady mające na celu ustalenie jednolitego stanowiska.
- *Etap 4 (Tworzenie raportu):* Kategoryzacja znalezionych błędów, obliczenie statystyk zgodności (metryki sumaryczne) oraz opracowanie końcowych wniosków i porad dotyczących naprawy interfejsu.

== Study Execution

W badaniu wzięła udział nasza czteroosobowa grupa badawcza (Adrian, Juliusz, Maciej, Sebastian). Każdy z członków zespołu niezależnie przeanalizował wyznaczoną ścieżkę zakupową na platformie Allegro, posiłkując się przygotowaną listą 30 kluczowych pytań kontrolnych z poziomów podstawowego i średnio-zaawansowanego standardu WCAG 2.1. Oceny wprowadzano indywidualnie do tabeli, przypisując każdemu kryterium wartość: "pozytywna" (zgodna), "negatywna" (niezgodna) lub "nie dotyczy".

Po zakończeniu fazy audytów indywidualnych przeprowadziliśmy konsolidację uzyskanych danych. Odpowiedź uznawano za bezsporną, gdy wszyscy badacze wskazali identyczną ocenę. W przypadku wystąpienia różnic (tzw. pytania konfliktowe), zespół przeprowadzał ponowną weryfikację na żywo. Wspólne przejście spornych kroków pozwoliło wyeliminować błędy wynikające z chwilowego przeoczenia lub różnego sposobu interpretacji zachowania technologii asystujących.

*Napotkane problemy podczas weryfikacji:*
- *Dynamiczne moduły reklamowe:* Różnice w wyświetlanych banerach marketingowych oraz oknach zachęcających do zakupu usług premium sprawiły, że audytorzy nie zawsze trafiali na identyczny układ strony. Część popupów blokowała fokus u jednego badacza, podczas gdy u innego w ogóle się nie wywołała.
- *Stopień biegłości w obsłudze NVDA:* Różne doświadczenie badaczy w płynnym posługiwaniu się skrótami klawiszowymi czytnika ekranu wpłynęło bezpośrednio na odmienne oceny semantyki skomplikowanych kontrolek filtrów bocznych.
- *Gęstość struktury DOM:* Bardzo duża liczba zagnieżdżonych elementów HTML na liście wyszukiwania utrudniała manualne lokalizowanie konkretnych błędów w narzędziach deweloperskich.

== Study Results

Zbiorcza analiza wykazała zróżnicowany poziom dostosowania desktopowej wersji platformy Allegro. Dokładnie połowa z analizowanych kryteriów (15 z 30) uzyskała jednomyślnie pozytywną ocenę u wszystkich audytorów, co świadczy o solidnych fundamentach dostępności systemu. Zespół zidentyfikował jednak 12 zagadnień konfliktowych (gdzie oceny końcowe różniły się między badaczami) oraz 6 kryteriów, które uzyskały co najmniej trzy oceny negatywne albo zostały ocenione w pełni negatywnie. 1 kryterium zostało uznane jednomyślnie za nieaplikowalne w badanych obszarach ("nie dotyczy").

*Skróty stosowane w poniższej tabeli zbiorczej:*
- *P (pozytywna)* - oznacza pełną zgodność z wytycznymi WCAG 2.1,
- *N (negatywna)* - oznacza wykrycie niezgodności i barier dostępności,
- *ND (nie dotyczy)* - oznacza brak sprawdzanego elementu na testowanych widokach.

#v(0.8em)

#table(
  columns: (20%, 40%, 12%, 7%, 7%, 7%, 7%),
  align: (left, left, center, center, center, center, center),
  fill: (col, row) => if row == 0 { luma(230) } else { none },
  
  [*Kryterium WCAG*], [*Pytanie kontrolne*], [*Poziom*], [*A*], [*J*], [*M*], [*S*],
  
  [1.1.1 Treść nietekst.], [Czy złożony element graficzny ma poszerzony opis?], [podstawowy], [N], [N], [ND], [P],
  [], [Czy element \<img> ma prawidłowy atrybut \<alt>?], [średni], [P], [P], [P], [P],
  [], [Czy dekoracyjny element \<img> ma pusty \<alt>?], [średni], [ND], [N], [N], [N],
  [1.2.2 Napisy rozsz.], [Czy dla treści wideo dostępne są napisy rozszerzone?], [podstawowy], [P], [P], [N], [P],
  [1.3.1 Info i relacje], [Czy nagłówki są zdefiniowane w logicznej kolejności?], [średni], [N], [P], [N], [N],
  [], [Czy elementy HTML do akcji są poprawnie użyte?], [średni], [P], [P], [P], [P],
  [1.3.2 Zrozum. kolejn.], [Czy kolejność odczytu przez czytnik ekranu jest logiczna?], [podstawowy], [P], [P], [P], [P],
  [1.3.5 Przeznaczenie], [Czy pola formularzy wspierają atrybuty autocomplete?], [średni], [P], [P], [P], [N],
  [1.4.1 Użycie koloru], [Czy kolor nie jest jedynym sposobem przekazywania info?], [podstawowy], [P], [P], [P], [P],
  [1.4.2 Kontrola dźwięku], [Czy jest automatycznie uruchamiany dźwięk? *[K]*], [podstawowy], [P], [P], [P], [P],
  [1.4.3 Kontrast (min.)], [Czy kontrast tekstu do tła wynosi min. 4,5:1?], [średni], [P], [P], [P], [P],
  [1.4.4 Zmiana rozm.], [Czy po powiększeniu do 200% widać komplet danych?], [podstawowy], [P], [N], [P], [P],
  [1.4.5 Obrazy z tekstem], [Czy do przekazywania tekstu używa się rzeczywistego tekstu?], [średni], [N], [N], [N], [N],
  [1.4.10 Reflow], [Czy treść dopasowuje się do ekranu bez przewijania poziomo?], [średni], [P], [P], [P], [P],
  [1.4.11 Kontrast nietekst.], [Czy kontrast elementów nietekstowych wynosi min. 3:1?], [średni], [P], [N], [P], [P],
  [1.4.12 Odstępy w tekście], [Czy zmiana odstępów między literami nie ucina tekstu?], [średni], [P], [P], [P], [P],
  [2.1.1 Klawiatura], [Czy elementy aktywne są dostępne klawiaturą? *[K]*], [podstawowy], [P], [P], [P], [P],
  [2.1.2 Brak pułapki kl.], [Czy na stronie występuje pułapka klawiaturowa? *[K]*], [podstawowy], [P], [N], [N], [P],
  [2.2.1 Limit czasu], [Czy użytkownik ma możliwość wydłużenia limitu czasu sesji?], [podstawowy], [ND], [ND], [ND], [ND],
  [2.4.1 Pominięcie bloków], [Czy istnieje mechanizm pominięcia powtarzających się bloków?], [podstawowy], [P], [P], [P], [N],
  [2.4.2 Tytuł strony], [Czy każda strona ma unikalny i opisowy tytuł?], [podstawowy], [P], [P], [P], [P],
  [2.4.3 Kolejność fokusu], [Czy nawigacja klawiaturą jest w pełni logiczna?], [podstawowy], [P], [P], [P], [P],
  [2.4.4 Cel łącza], [Czy jest ostrzeżenie przed otwarciem nowego okna?], [podstawowy], [N], [N], [N], [N],
  [2.4.5 Wiele dróg], [Czy użytkownik ma dostęp do wielu sposobów znalezienia strony?], [średni], [P], [P], [P], [P],
  [2.4.6 Nagłówki i etyk.], [Czy nagłówki i etykiety jasno opisują temat lub cel?], [średni], [P], [P], [P], [P],
  [2.4.7 Widoczny fokus], [Czy widać, który element jest aktualnie aktywny?], [podstawowy], [P], [P], [P], [P],
  [3.2.3 Spójna nawigacja], [Czy wygląd i działanie menu jest stałe?], [podstawowy], [N], [P], [N], [N],
  [3.3.1 Identyfikacja bł.], [Czy błąd w formularzu jest jasno opisany?], [podstawowy], [N], [P], [P], [P],
  [3.3.2 Etykiety/instruk.], [Czy obok pól formularza znajdują się jasne etykiety?], [podstawowy], [P], [P], [P], [P],
  [4.1.2 Nazwa/rola/wart.], [Czy nazwa i rola dynamicznych komponentów jest poprawna?], [podstawowy], [N], [P], [N], [N]
)
#text(size: 9pt)[[K] - Pytanie kluczowe z punktu widzenia powodzenia całej operacji.]

#v(1em)
#align(center)[
  #image("chart_answers.png", width: 80%)
]

#v(1em)
#align(center)[
  #image("chart_consistency.png", width: 80%)
]

#v(1.5em)

== Odpowiedzi na pytania badawcze Q1-Q4

Poniżej przypisano wyniki wcześniej zebranych metryk do pytań badawczych zdefiniowanych w części "Questions and Metrics". Dzięki temu liczby z tabeli nie są wyłącznie ogólnym podsumowaniem audytu, ale bezpośrednio odpowiadają na każde pytanie Q.

=== Q1: Czy interfejs jest w pełni użyteczny dla osób nawigujących wyłącznie klawiaturą?

*Odpowiedź:* Nie w pełni. Główna ścieżka zakupowa była możliwa do przejścia klawiaturą, ale audyt wykazał sporadyczne bariery w elementach modalnych i galerii zdjęć.

*Wyniki metryk:*
- Dostępność elementów aktywnych klawiaturą: *4/4 oceny P* dla kryterium 2.1.1.
- Logiczna kolejność fokusu: *4/4 oceny P* dla kryterium 2.4.3.
- Widoczność fokusu: *4/4 oceny P* dla kryterium 2.4.7.
- Pułapki klawiaturowe: *2/4 oceny N* dla kryterium 2.1.2; wykryto konkretny problem z uwięzieniem fokusu w galerii zdjęć lub popupach.
- Mechanizm pomijania powtarzalnych bloków: *3/4 oceny P* dla kryterium 2.4.1.

*Wniosek:* Allegro spełnia podstawowy warunek obsługi bez myszy w głównym procesie zakupowym, ale nie można uznać interfejsu za w pełni dostępny dla użytkowników klawiatury. Najważniejsza poprawka dotyczy stabilnego opuszczania popupów i galerii klawiszem Esc oraz zachowania fokusu po zamknięciu modalnego elementu.

=== Q2: Czy architektura informacji jest poprawnie interpretowana przez czytniki ekranu?

*Odpowiedź:* Częściowo. Podstawowa struktura wielu elementów jest odczytywana poprawnie, ale problemy pojawiają się przy grafikach promocyjnych, opisach sprzedawców, dynamicznych filtrach i elementach otwierających nową kartę.

*Wyniki metryk:*
- Standardowe atrybuty `alt` przy elementach `img`: *4/4 oceny P* w badanym zakresie.
- Złożone grafiki informacyjne: *2 oceny N, 1 P, 1 ND*; część grafik promocyjnych nie miała wystarczającego opisu.
- Dekoracyjne grafiki: *3 oceny N, 1 ND*; audytorzy wskazali ryzyko odczytywania elementów, które nie powinny wnosić treści.
- Logiczna struktura nagłówków: *3/4 oceny N* dla kryterium 1.3.1; problem dotyczył głównie opisów tworzonych przez sprzedawców.
- Kolejność odczytu przez czytnik ekranu: *4/4 oceny P* dla kryterium 1.3.2.
- Etykiety i instrukcje formularzy: *4/4 oceny P* dla kryterium 3.3.2, ale atrybuty `autocomplete` uzyskały *3/4 oceny P*.
- Nazwa, rola i wartość dynamicznych komponentów: *3/4 oceny N* dla kryterium 4.1.2; problem wiązał się między innymi z dynamicznymi filtrami bez czytelnego komunikatu dla czytnika.
- Ostrzeganie o linkach otwieranych w nowej karcie: *4/4 oceny N* dla kryterium 2.4.4.

*Wniosek:* Czytnik ekranu pozwala przejść przez zasadnicze elementy ścieżki, ale architektura informacji nie jest konsekwentnie poprawna. Największy wpływ mają braki w opisach grafik, tekst umieszczony w obrazach, nieuporządkowane nagłówki sprzedawców oraz brak komunikowania zmian dynamicznych, np. po zastosowaniu filtrów.

=== Q3: Czy szata graficzna i formularze są przyjazne dla osób z dysleksją i słabowidzących?

*Odpowiedź:* Raczej tak w warstwie podstawowej czytelności, ale z istotnymi wyjątkami dotyczącymi tekstu w grafikach, powiększenia oraz komunikatów błędów.

*Wyniki metryk:*
- Minimalny kontrast tekstu 4,5:1: *4/4 oceny P* dla kryterium 1.4.3.
- Kontrast elementów nietekstowych: *3/4 oceny P* dla kryterium 1.4.11.
- Przekazywanie informacji nie tylko kolorem: *4/4 oceny P* dla kryterium 1.4.1.
- Powiększenie widoku do 200%: *3/4 oceny P* dla kryterium 1.4.4; odnotowano nakładanie się drobnych ikon dostawy na tekst na stronie wyników.
- Reflow bez przewijania poziomego: *4/4 oceny P* dla kryterium 1.4.10.
- Odstępy w tekście: *4/4 oceny P* dla kryterium 1.4.12.
- Tekst w postaci obrazów: *4/4 oceny N* dla kryterium 1.4.5; problem dotyczył między innymi opisów i tabel umieszczanych jako grafiki przez sprzedawców.
- Identyfikacja błędów formularzy: *3/4 oceny P* dla kryterium 3.3.1; wykryto przypadek komunikatów walidacyjnych bez przeniesienia fokusu.

*Wniosek:* Warstwa wizualna Allegro jest zasadniczo czytelna pod względem kontrastu i skalowania, ale użytkownicy słabowidzący lub z trudnościami poznawczymi mogą napotkać bariery w miejscach mniej kontrolowanych systemowo: opisach sprzedawców, grafikach z tekstem oraz formularzach, w których błąd pojawia się poza aktualnym fokusem.

=== Q4: Jaki jest zbiorczy poziom dostępności cyfrowej dla analizowanego procesu?

*Odpowiedź:* Zbiorczy poziom dostępności można ocenić jako dobry, ale niepełny. Platforma ma mocne podstawy dostępności w badanej ścieżce, jednak liczba negatywnych ocen i rozbieżności pokazuje, że nie jest to poziom pełnej zgodności WCAG 2.1 AA.

*Wyniki metryk zbiorczych:*
- Liczba pytań kontrolnych: *30*.
- Liczba audytorów: *4*.
- Łączna liczba ocen cząstkowych: *120*.
- Oceny pozytywne: *84/120*, czyli *70,0% wszystkich ocen*.
- Oceny negatywne: *30/120*, czyli *25,0% wszystkich ocen*.
- Oceny "nie dotyczy": *6/120*, czyli *5,0% wszystkich ocen*.
- Odsetek zgodności po wyłączeniu odpowiedzi ND: *84/114*, czyli około *73,7% ocen aplikowalnych*.
- Pytania ocenione jednomyślnie pozytywnie: *15/30*.
- Pytania ocenione spójnie przez wszystkich audytorów: *18/30*, czyli *60,0%*.
- Pytania z rozbieżnościami między audytorami: *12/30*, czyli *40,0%*.
- Kryteria z co najmniej trzema ocenami negatywnymi albo pełną niezgodnością: *6/30*.
- Wykryte konkretne usterki: *10*, w tym *6 istotnych* i *4 nieistotne*. W tabeli usterek nie oznaczono osobnej bariery jako krytycznej dla całej ścieżki.

*Wniosek:* Wynik 70,0% ocen pozytywnych pokazuje, że badany proces zakupowy jest w większości dostępny, ale nie wolny od barier. Najbardziej ryzykowne obszary to elementy dynamiczne, grafiki z tekstem, linki otwierające nowe okna, galerie/popupy oraz walidacja formularzy. Są to problemy punktowe, lecz dotyczą kluczowych grup użytkowników: osób korzystających z klawiatury, czytnika ekranu i powiększenia.

#v(1.5em)

*Zestawienie Pytania Kluczowe - Podsumowanie:*
- *Czy wszystkie elementy aktywne w serwisie są dostępne za pomocą klawiatury?* \
  -> _pozytywna, zgodna_ - oznaczono na podstawie braku jakichkolwiek problemów przy nawigacji procesem zakupowym.
- *Czy jest na stronie pułapka klawiaturowa?* \
  -> _niezgodne, 50/50_ - napotkano sporadyczne utknięcia w pop-upach i zdjęciach zależne od stanu sesji badacza.
- *Czy jest automatycznie uruchamiany dźwięk, którego nie da się zatrzymać?* \
  -> _pozytywna, zgodna_ - testy były wolne od obciążeń dźwiękowych narzuconych z góry.

#v(1.5em)

W celu jednoznacznego zlokalizowania problemów, poniżej zestawiono konkretne, zidentyfikowane usterki wraz z przypisaną im wagą (krytycznością) oraz rekomendacją naprawczą:

#v(0.5em)
*Legenda wagi błędu:*
- *nieistotne* - element jest mało ważny, ma niewielki wpływ na dostępność strony,
- *istotne* - element jest bardzo ważny, ma znaczący wpływ na dostępność i realizację procesu zakupowego.

#v(0.8em)

#table(
  columns: (6%, 24%, 52%, 18%),
  align: (center, left, left, center),
  fill: (col, row) => if row == 0 { luma(230) } else { none },
  
  [*LP*], [*Miejsce / Podstrona*], [*Opis błędu oraz rekomendacja naprawcza*], [*Waga błędu*],
  
  [1.], [Strona główna (karuzele)], [Brak tekstów alternatywnych w grafikach promocyjnych. \ *Rekomendacja:* Dodać atrybuty `alt` opisujące treść promocji.], [istotne],
  [2.], [Wyniki wyszukiwania], [Dynamiczne przeładowanie filtrów (AJAX) nie jest anonsowane głosowo. \ *Rekomendacja:* Wdrożyć regiony `aria-live="polite"`.], [istotne],
  [3.], [Szczegóły oferty], [Zaburzona struktura nagłówków w sekcji opisu u sprzedawców. \ *Rekomendacja:* Wprowadzić systemowy szablon wymuszający hierarchię.], [nieistotne],
  [4.], [Galeria zdjęć oferty], [Uwięzienie fokusu w trybie pełnoekranowym (brak obsługi klawisza Esc). \ *Rekomendacja:* Dodać listener obsługujący wyjście klawiszem Esc.], [istotne],
  [5.], [Koszyk i dostawa], [Komunikaty błędów walidacji wyskakują z boku bez przeniesienia fokusu. \ *Rekomendacja:* Automatycznie kierować fokus na pole z błędem.], [istotne],
  [6.], [Stopka strony], [Otwieranie linków zewnętrznych w nowej karcie bez powiadomienia ARIA. \ *Rekomendacja:* Dodać ukryty tekst `aria-label="nowe okno"`.], [istotne],
  [7.], [Wyniki wyszukiwania], [Przy powiększeniu widoku (200%) ikonki dostawy nakładają się na tekst. \ *Rekomendacja:* Poprawić elastyczność kontenerów w CSS.], [nieistotne],
  [8.], [Strona płatności], [Przycisk sfinalizowania zamówienia generuje powtórzenia w czytniku. \ *Rekomendacja:* Oczyścić etykietę przycisku z nadmiarowych znaczników.], [nieistotne],
  [9.], [Szczegóły oferty (sekcja "Opis")], [Część sprzedawców umieszcza ważne informacje (np. tabele rozmiarów) jako nieedytowalne grafiki z tekstem, co uniemożliwia ich odczytanie przez NVDA. \ *Rekomendacja:* Wymusić stosowanie rzeczywistego tekstu HTML z odpowiednim formatowaniem CSS.], [istotne],
  [10.], [Koszyk / Formularz dostawy], [Brak atrybutów `autocomplete` na polach danych zamawiającego (np. email, telefon), co utrudnia automatyczne wypełnianie formularza. \ *Rekomendacja:* Uzupełnić kody inputów o właściwe tagi autocomplete (np. `email`, `tel`).], [nieistotne]
)

// ── 4. Conclusions ────────────────────────────────────────────────────────
= Conclusions and Implications of the Study

Przeprowadzone badanie pozwala stwierdzić, że Allegro jest nowoczesną platformą e-commerce o wysokiej ogólnej dostępności cyfrowej w badanej ścieżce. Główne i najbardziej krytyczne kroki (od wyszukania po finalizację koszyka) były możliwe do przejścia bez użycia myszy oraz z wykorzystaniem technologii wspierających, choć audyt wykazał kilka istotnych barier.

Mimo to, audyt uwidocznił kilka powtarzających się barier, które obniżają komfort osób niepełnosprawnych, a zignorowane mogą miejscami wykluczać użytkowników. 

*Najistotniejsze zidentyfikowane problemy:*
- *Zjawisko pułapek klawiaturowych (Keyboard traps)* w galeriach zdjęć u niektórych sprzedawców, blokujące dalszą ścieżkę.
- *Dynamiczne przeładowania list (AJAX/Fetch)* przy wyborze filtrów bocznych bez wykorzystania odpowiednich regionów ARIA (`aria-live`). Powoduje to, że użytkownik NVDA po kliknięciu spacji na opcji "Logitech" nie otrzymuje natychmiastowej wiadomości głosowej o zmianie wyników wyszukiwania, a jego fokus ulega przesunięciu.
- *Słaba struktura opisów tworzonych przez sprzedawców:* Brak nadzoru nad atrybutami `alt` i poprawnymi nagłówkami w niestandardowych szablonach aukcyjnych obniża dostępność dla osób niewidomych.

*Implikacje dla rozwoju aplikacji:*
Platforma powinna zainwestować w ujednolicenie komponentów galerii modalnych, by zawsze respektowały one ucieczkę przez "Esc" (WCAG 2.1.2). Ponadto system dodawania aukcji (od strony sprzedawcy) mógłby wdrożyć automatyczne walidatory wymuszające podstawową dostępność, na przykład podpowiadające dodanie `alt` tekstu po przesłaniu grafiki produktu. Konieczna jest też rewizja ról ARIA dla koszyka przy dynamicznej aktualizacji kosztów dostawy.

// ── 5. Lessons learned ────────────────────────────────────────────────────
= Lessons Learned

*Co poszło dobrze:*
Ewaluacja przeprowadzona niezależnie przez czterech audytorów okazała się bardzo rzetelną metodą. Dzięki zróżnicowanemu podejściu udało się wyłapać zarówno błędy "techniczne" (w kodzie strony), jak i błędy "UX-owe" (logiczne). Faza dyskusji grupowej pozwoliła wyeliminować tzw. "false-positives" (fałszywe alarmy wynikające np. z chwilowego zawieszenia się czytnika NVDA).

*Czego się nauczyliśmy:*
Doświadczenie z oprogramowaniem czytającym ekran (NVDA) znacząco zmieniło nasze postrzeganie semantyki kodu HTML. Nawet strona przechodząca poprawnie automatyczne audyty Lighthouse czy Axe, wciąż może stanowić wyzwanie kognitywne ze względu na zbyt dużą ilość "szumu informacyjnego" (np. odczytywania ukrytych elementów reklamowych). Ponadto przekonaliśmy się, jak silnie spersonalizowany jest interfejs Allegro i jak testy na tym samym portalu mogą różnić się u poszczególnych osób ze względu na mechanizmy A/B testów i rekomendacji.

*Co byśmy zrobili inaczej (refleksja nad planem):*
Gdybyśmy mieli powtórzyć to badanie, precyzyjniej zdefiniowalibyśmy stan środowiska testowego na maszynach badaczy. Różnice sprzętowe, inna rozdzielczość ekranów (viewport), włączone lub wyłączone wtyczki typu AdBlock czy uBlock Origin sprawiały, że widzieliśmy inną strukturę i różny stopień zagęszczenia reklam. Narzucenie tzw. "czystego profilu" przeglądarki Chrome z jednakową rozdzielczością pozwoliłoby znacząco zredukować liczbę pytań konfliktowych.
