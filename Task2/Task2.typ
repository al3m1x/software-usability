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
  *Metryki badawcze:* liczba grafik informacyjnych pozbawionych opisów alternatywnych; braki powiązań między etykietami a polami formularzy; błędy w logicznym układzie nagłówków (H1, H2, itd.).
- *Q3: Czy szata graficzna i formularze są przyjazne dla osób z dysleksją i słabowidzących?* \
  *Metryki badawcze:* liczba tekstów nieosiągających minimalnego kontrastu (4.5:1); błędy renderowania przy powiększeniu interfejsu do 200%; liczba niejasnych komunikatów w procesie zgłaszania błędów walidacji.
- *Q4: Jaki jest zbiorczy poziom dostępności cyfrowej dla analizowanego procesu?* \
  *Metryki badawcze:* zsumowana liczba kryteriów zaliczonych, częściowo zaliczonych oraz oblanych; ogólny odsetek zgodności ze standardem; podział wykrytych usterek ze względu na ich krytyczność; liczba punktów spornych między ewaluatorami przed ostatecznymi ustaleniami.

== Study Plan

*Metodologia:* Zastosujemy ewaluację ekspercką dostępności opartą na liście kontrolnej WCAG 2.1 na poziomie AA, wspartą testami manualnymi i narzędziami automatycznymi. Badanie nie będzie polegało wyłącznie na automatycznym skanowaniu strony, ponieważ narzędzia takie jak WAVE i Axe DevTools nie wykrywają wszystkich problemów dostępności, np. jakości tekstów alternatywnych, logiczności kolejności fokusu czy zrozumiałości komunikatów.

Lista kontrolna zostanie zbudowana na podstawie wybranych kryteriów WCAG 2.1 AA istotnych dla analizowanej ścieżki zakupowej:
- *1.1.1 Non-text Content* - obecność i sensowność tekstów alternatywnych dla grafik informacyjnych.
- *1.3.1 Info and Relationships* - poprawna struktura nagłówków, etykiet i relacji między elementami formularzy.
- *1.4.3 Contrast (Minimum)* - kontrast tekstu i istotnych elementów interfejsu minimum 4.5:1.
- *1.4.4 Resize Text* - możliwość korzystania ze strony przy powiększeniu tekstu lub interfejsu do 200%.
- *2.1.1 Keyboard* - możliwość obsługi kluczowych funkcji wyłącznie za pomocą klawiatury.
- *2.1.2 No Keyboard Trap* - brak sytuacji, w których użytkownik nie może opuścić elementu interfejsu klawiaturą.
- *2.4.3 Focus Order* - logiczna kolejność przechodzenia fokusu przez elementy strony.
- *2.4.7 Focus Visible* - widoczny wskaźnik fokusu na aktywnych elementach.
- *3.3.1 Error Identification* - jasne wskazywanie błędów w formularzach.
- *3.3.2 Labels or Instructions* - obecność czytelnych etykiet i instrukcji przy polach formularzy.
- *4.1.2 Name, Role, Value* - poprawna interpretacja przycisków, pól i kontrolek przez technologie asystujące.

Do każdego kryterium przypiszemy ocenę: *Spełnia*, *Częściowo spełnia*, *Nie spełnia* albo *Nie dotyczy*. Dla każdego wykrytego problemu zapiszemy widok, opis bariery, grupę użytkowników, której problem dotyczy, przewidywany wpływ na wykonanie zadania oraz rekomendację naprawczą.

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

W badaniu wzięła udział nasza czteroosobowa grupa badawcza (Adrian, Juliusz, Maciej, Sebastian). Każdy z członków zespołu niezależnie przeanalizował wyznaczoną ścieżkę zakupową na platformie Allegro, posiłkując się listą kontrolną WCAG 2.1. Skupiliśmy się na pytaniach z poziomu podstawowego i średniego, co wygenerowało obszerną listę punktów do weryfikacji per osoba. Oceny wprowadzano do współdzielonej tabeli, przypisując każdemu kryterium wartość: "Pozytywna", "Negatywna" lub "Nie dotyczy".

Po zakończeniu fazy audytów indywidualnych, przeprowadziliśmy zestawienie wyników. Odpowiedź uznawano za bezsporną (zgodną), gdy wszyscy badacze wskazali dokładnie tę samą ocenę. W przypadku różnic ("pytania konfliktowe"), wspólnie dyskutowaliśmy nad danym krokiem, odtwarzając nawigację na żywo, aby zlokalizować źródło rozbieżności. Taka metoda umożliwiła zniwelowanie błędów poznawczych jednostki.

*Napotkane problemy podczas weryfikacji:*
- *Dynamiczne moduły reklamowe i polecenia:* Różnice w wyświetlanych reklamach, banerach cookies oraz oknach zachęcających do zakupu pakietu Smart sprawiły, że badacze nie zawsze oceniali identyczny stan aplikacji. U niektórych modalne okna gwałtownie przejmowały fokus klawiatury, podczas gdy u innych nie pojawiły się wcale.
- *Znajomość czytnika ekranu (NVDA):* Różny stopień doświadczenia w obsłudze skrótów klawiszowych NVDA wpłynął na ocenę formularzy. Część badaczy uznawała niektóre pola filtrów za niesemantyczne, podczas gdy inni płynnie nawigowali między nimi za pomocą zaawansowanych komend czytnika.
- *Rozbudowany i gęsty DOM:* Ogromna liczba elementów HTML na stronach wynikowych powodowała pewne trudności w dokładnym namierzaniu błędów podczas korzystania z narzędzi inspekcyjnych przeglądarki, co przedłużało czas trwania testu.

== Study Results

Zbiorcza analiza wykazała, że interfejs Allegro na urządzeniach desktopowych jest utrzymany w relatywnie wysokim standardzie dostępności. Spośród analizowanych kryteriów, znaczna większość została oceniona jednomyślnie pozytywnie przez wszystkich członków zespołu badawczego. 

*Pytania kluczowe:*
- *Czy wszystkie elementy aktywne w serwisie są dostępne za pomocą klawiatury? (WCAG 2.1.1)* \
  *Wynik:* Pozytywny – nie zidentyfikowano problemów, nawigacja przebiegała płynnie przy użyciu klawisza Tab po głównych kafelkach ofert.
- *Czy jest na stronie pułapka klawiaturowa? (WCAG 2.1.2)* \
  *Wynik:* Konfliktowy – dwóch badaczy utknęło wewnątrz interaktywnej galerii zdjęć w szczegółach produktu (nie działało wyjście przez "Esc" ani "Shift+Tab" w określonym scenariuszu powiększenia), natomiast pozostali nie natrafili na ten błąd.
- *Czy są elementy, które szybko błyskają na czerwono lub gwałtownie zmieniają jasność? (WCAG 2.3.1)* \
  *Wynik:* Pozytywny – brak elementów wywołujących ataki padaczki fotogennej.
- *Czy jest automatycznie uruchamiany dźwięk, którego nie da się zatrzymać? (WCAG 1.4.2)* \
  *Wynik:* Pozytywny – brak takich dźwięków.


#v(1em)
#align(center)[
  #image("chart_answers.png", width: 80%)
]

*Pytania konfliktowe i istotne rozbieżności:*
Wykryliśmy kilkanaście zagadnień konfliktowych (rozbieżnych w ocenach). Wynikały one z interpretacji szczegółowości list kontrolnych.
- *WCAG 1.1.1 (Treść nietekstowa):* Oceny: 1x Pozytywna, 2x Negatywna, 1x Nie dotyczy. Niektórzy uznali `alt` atrybuty logotypów dostawców za wystarczające, inni punktowali złą jakość opisów zdjęć wrzucanych bezpośrednio przez sprzedawców w sekcji opisu aukcji.
- *WCAG 1.3.1 (Informacje i relacje):* Oceny: 2x Pozytywna, 2x Negatywna. Dotyczyło to skomplikowanego zagnieżdżenia nagłówków. Czasami na liście ofert h3 następowało bezpośrednio po h1, co jest technicznie błędem logicznym odczytu.
- *WCAG 2.4.4 (Cel łącza):* Zauważono brak konsekwentnych powiadomień dla czytników ekranu przy otwieraniu ofert w nowej karcie przeglądarki.

#v(1em)
#align(center)[
  #image("chart_consistency.png", width: 80%)
]

Szczegółowa tabela, zawierająca listę konkretnych, znalezionych usterek, adresów URL (lub wskazania podstrony), wraz z wagą błędu znajduje się w odrębnym załączniku (Wyniki badania – analiza).

*Odpowiedzi na pytania badawcze (Q1-Q4):*
- *Q1 (Nawigacja klawiaturą):* W większości użyteczna, jednak natrafiono na punktowe problemy (pułapki klawiaturowe w galeriach zdjęć).
- *Q2 (Czytniki ekranu):* Architektura informacji jest na ogół logicznie nakreślona, ale dynamiczne zmiany zawartości (np. filtry) wymagają lepszej obsługi regionów `aria-live`. Dodatkowo, opisy aukcji stworzone przez sprzedawców często posiadają złą strukturę nagłówków i brak opisów alternatywnych.
- *Q3 (Dostępność wizualna):* Kontrasty są poprawne (spełniają min. 4.5:1), a interfejs przy powiększeniu do 200% zachowuje zadowalającą czytelność bez zagrażającego nachodzenia na siebie krytycznych elementów.
- *Q4 (Ogólny poziom dostępności):* Platforma wykazuje wysoki poziom ogólnej zgodności. Główne procesy zakupowe są w pełni dostępne, a wykryte luki mają charakter incydentalny i dotyczą głównie treści oddanych we władanie zewnętrznych sprzedawców oraz skomplikowanych komponentów asynchronicznych.

// ── 4. Conclusions ────────────────────────────────────────────────────────
= Conclusions and Implications of the Study

Przeprowadzone badanie pozwala stwierdzić, że Allegro jest nowoczesną platformą e-commerce o wysokiej ogólnej dostępności cyfrowej. Główne i najbardziej krytyczne ścieżki (od wyszukania po finalizację koszyka) zostały poprawnie oprogramowane pod kątem nawigacji bez użycia myszy oraz odczytu przez asystentów głosowych.

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