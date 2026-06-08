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

W ramach analizy dostępności (accessibility), wyodrębniono three główne grupy użytkowników platformy, które zmagają się ze specyficznymi trudnościami:

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
  *Metryki badawcze:* liczba grafik informacyjnych pozbawionych opisów alternatywnych / nieprawidłowo osadzonych; braki powiązań między etykietami a polami formularzy; braki atrybutów autocomplete; błędy w logicznym układzie nagłówków (H1, H2, itd.).
- *Q3: Czy szata graficzna i formularze są przyjazne dla osób z dysleksją i słabowidzących?* \
  *Metryki badawcze:* liczba elementów nieosiągających minimalnego kontrastu tekstu do tła (4.5:1); błędy renderowania przy powiększeniu interfejsu do 200%; liczba niejasnych komunikatów w procesie zgłaszania błędów walidacji.
- *Q4: Jaki jest zbiorczy poziom dostępności cyfrowej dla analizowanego procesu?* \
  *Metryki badawcze:* zsumowana liczba kryteriów zaliczonych, częściowo zaliczonych oraz oblanych; ogólny odsetek zgodności ze standardem; podział wykrytych usterek ze względu na ich krytyczność; liczba punktów spornych między ewaluatorami przed ostatecznymi ustaleniami.

== Study Plan

*Uzasadnienie metodyki (Ekspercka ewaluacja vs Badanie z użytkownikami):*
Przystępując do planowania audytu, rozważaliśmy przeprowadzenie testów bezpośrednio z udziałem osób z niepełnosprawnościami. Ostatecznie zdecydowaliśmy się na ekspercką ewaluację opartą na liście kontrolnej z dwóch kluczowych powodów. Po pierwsze, organizacja badań z użytkownikami wiąże się z bardzo dużą trudnością w uzyskaniu dostępu do specyficznych, silnie zróżnicowanych grup docelowych (rekrutacja osób całkowicie niewidomych czy z głębokimi dysfunkcjami motorycznymi w krótkim czasie trwania projektu akademickiego była nierealna). Po drugie, profesjonalna lista kontrolna WCAG 2.1 AA w sposób systematyczny pokrywa najważniejsze, elementarne wymagania techniczne i semantyczne. Pozwala ona precyzyjnie zasymulować i zmapować najpoważniejsze trudności oraz krytyczne blokady, na które te grupy użytkowników bezwzględnie natknęłyby się w pierwszej kolejności podczas próby zakupu.

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

*Uzasadnienie wyboru i opis narzędzi:* Ewaluacja ekspercka z checklistą WCAG jest odpowiednia dla tego projektu, ponieważ pozwala systematycznie sprawdzić dostępność tej samej ścieżki zakupowej, która była analizowana w Task 1 pod kątem użyteczności. Dzięki temu możemy porównać, czy elementy problematyczne dla użytkowników okazjonalnych są również barierami dla osób z deficytami wzrokowymi, motorycznymi lub poznawczymi. Połączenie metod manualnych i teoretycznie automatycznych miało zwiększyć rzetelność badania, dlatego do testów wybraliśmy zestaw trzech zróżnicowanych narzędzi:
- *NVDA (NonVisual Desktop Access):* Specjalistyczny, darmowy czytnik ekranu (screen reader) dla systemu Windows. Jest to oprogramowanie asystujące, które przekształca tekst oraz architekturę kodu HTML na mowę syntetyczną, umożliwiając osobom niewidomym pełną, bezwzrokową interakcję z komputerem. NVDA okazało się w naszym projekcie narzędziem niezwykle przydatnym i pomogło nam w tej checkliście w stopniu fundamentalnym, pozwalając realnie "usłyszeć" i zrozumieć bariery na stronie. Jednocześnie próg wejścia był bardzo wysoki – poprawne posługiwanie się nim, nauka skomplikowanych skrótów klawiszowych oraz interpretacja komunikatów dynamicznych były dla nas dosyć skomplikowane.
- *WAVE (Web Accessibility Evaluation Tool):* Popularna wtyczka przeglądarkowa służąca do automatycznej oceny dostępności witryn internetowych. Działa poprzez nakładanie wizualnych ikon (alertów i błędów) bezpośrednio na strukturę renderowanej strony.
- *Axe DevTools:* Zautomatyzowane narzędzie testowe zintegrowane bezpośrednio z konsolą deweloperską przeglądarki, przeznaczone do szybkiego skanowania kodu źródłowego pod kątem zgodności ze standardami WCAG.

W praktyce testowej okazało się, że wtyczki *WAVE oraz Axe DevTools* nie zastąpiły całkowicie analizy manualnej, jedynie wsparły nas w poszukiwaniu błędów. Narzędzia automatyczne potrafią wykryć jedynie proste, ściśle techniczne usterki ukryte w kodzie (np. całkowity brak znacznika alt czy jawne błędy w zadeklarowanych poziomach nagłówków). Całkowicie zawodzą jednak przy ocenie kontekstu, kognitywnej poprawności opisów alternatywnych czy zachowania złożonych elementów dynamicznych (jak filtry AJAX czy modalne galerie). Z tego powodu automatyzację potraktowaliśmy jedynie jako powierzchowny wstęp, a *głównie weryfikowaliśmy wszystkie rzeczy ręcznie*. Skrupulatna ocena manualna, samodzielna bezmyszkowa nawigacja klawiszem Tab oraz bezpośrednie, ręczne badanie interfejsu czytnikiem NVDA okazały się absolutnie konieczne wszędzie tam, gdzie algorytm nie jest w stanie ocenić jakości i logiki realnego doświadczenia użytkownika.

*Założenia projektowe (Study design):*
1. *Narzędzie główne:* Posłużymy się oficjalną matrycą do badania dostępności cyfrowej. Aby zachować realistyczne ramy czasowe projektu, ocenie poddamy jedynie zagadnienia z poziomu podstawowego (basic) i średniego (intermediate), rezygnując z dogłębnej analizy zaawansowanych skryptów.
2. *Ujednolicona procedura przygotowania stanowiska (Setup):* Aby zapewnić rzetelność i możliwość ścisłego odtworzenia wyników badania, wdrożyliśmy rygorystyczną procedurę przygotowania stanowiska roboczego. Weryfikacja setupu odbyła się na serwerze Discord przed rozpoczęciem pracy przez któregokolwiek z badaczy. Każdy członek zespołu udostępniał ekran, a przynajmniej jedna osoba weryfikowała, czy wszystko jest poprawnie skonfigurowane, by zagwarantować stuprocentową spójność. Każdy z ewaluatorów musiał spełnić następujące wymogi testowe:
   - *System i monitor:* System operacyjny Windows (niezbędny dla spójnego działania NVDA) oraz identyczna rozdzielczość monitora: Full HD (1920x1080). Gwarantowało to identyczne punkty załamania interfejsu (breakpoints) u każdego badacza.
   - *Przeglądarka:* Google Chrome uruchomiona w trybie Incognito, z bazowym powiększeniem ustawionym dokładnie na 100%.
   - *Czystość środowiska:* Bezwzględny brak włączonych wtyczek blokujących reklamy (AdBlock, uBlock itp.).
   - *Konto badawcze:* Wszyscy badacze byli zalogowani na to samo, specjalnie utworzone konto współdzielone na Allegro, co gwarantowało pusty koszyk na start i brak spersonalizowanej historii wyszukiwania.
3. *Zaplecze techniczne:*
   - Darmowy program NVDA symulujący odbiór strony przez osoby niewidome (uruchamiany na domyślnych ustawieniach),
   - Rozszerzenia przeglądarkowe (WAVE oraz Axe DevTools) do błyskawicznego wyłapywania błędów semantycznych,
   - Badanie nawigacji przeprowadzane wyłącznie bez użycia urządzenia wskazującego (myszy).
4. *Sposób realizacji (Triangulacja):* Każda z czterech osób w zespole niezależnie przeprowadzi inspekcję czterech podstron, zaznaczając na swoim arkuszu zgodność z każdym punktem listy (Spełnia / Nie spełnia / Nie dotyczy). Następnie zespół zestawi swoje indywidualne arkusze do wspólnej dyskusji.

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
- *Etap 1 (Przygotowawczy):* Wybór i adaptacja adekwatnej listy weryfikacyjnej WCAG 2.1. Konfiguracja sprzętu, instalacja technologii asystujących i formalna weryfikacja stanowisk testowych na Discordzie.
- *Etap 2 (Audyt indywidualny):* Każdy z badaczy samodzielnie ocenia wskazane widoki platformy, szczegółowo wypełniając własną kartę ocen na zunifikowanym środowisku.
- *Etap 3 (Konsolidacja wyników):* Zebranie danych z czterech arkuszy w jedną bazę. Wyłonienie pytań konfliktowych (rozbieżności w zespole) i wspólne obrady mające na celu ustalenie jednolitego stanowiska.
- *Etap 4 (Tworzenie raportu):* Kategoryzacja znalezionych błędów, obliczenie statystyk zgodności (metryki sumaryczne) oraz opracowanie końcowych wniosków i porad dotyczących naprawy interfejsu.

== Study Execution

W badaniu wzięła udział nasza czteroosobowa grupa badawcza (Adrian, Juliusz, Maciej, Sebastian). Każdy z członków zespołu niezależnie przeanalizował wyznaczoną ścieżkę zakupową na platformie Allegro, posiłkując się przygotowaną listą 30 kluczowych pytań kontrolnych z poziomów podstawowego i średnio-zaawansowanego standardu WCAG 2.1. Oceny wprowadzano indywidualnie do tabeli, przypisując każdemu kryterium wartość: "pozytywna" (zgodna), "negatywna" (niezgodna) lub "nie dotyczy".

Po zakończeniu fazy audytów indywidualnych przeprowadziliśmy konsolidację uzyskanych danych. Zależało nam na wypracowaniu twardych, realistycznych metryk ilościowych. *Metodologia ustalania metryk* opierała się na następującym procesie: jeśli wszyscy 4 badacze zaznaczyli ten sam błąd (pełna zgodność), usterka od razu zasilała nasze statystyki. W sytuacjach, gdzie oceny były rozbieżne (np. jedna osoba znalazła pułapkę klawiaturową, a pozostałe nie), wstrzymywaliśmy się od pochopnych wniosków. Zespół siadał do wspólnej dyskusji i przechodził przez dany element interfejsu na żywo, powtarzając czynność krok po kroku. Ustalaliśmy wtedy jedną, ostateczną wersję wydarzeń – czy błąd faktycznie występuje dla każdego, czy wynikał jedynie z chwilowego błędu przeglądarki u jednego z nas. Metryki w sekcji "Odpowiedzi na pytania badawcze" reprezentują wyłącznie ten w pełni przedyskutowany i zgodny konsensus naszej czwórki.

*Napotkane problemy podczas weryfikacji:*
- *Dynamiczne moduły reklamowe i A/B testy:* Pomimo skrupulatnie ujednoliconego stanowiska badawczego (to samo konto, brak blokerów, tryb Incognito), mechanizmy platformy e-commerce tej skali potrafiły okazjonalnie serwować poszczególnym audytorom nieco inne rekomendacje lub banery marketingowe. Sprawiało to, że nie zawsze trafialiśmy na w 100% identyczny układ strony na etapie testów indywidualnych.
- *Stopień biegłości w obsłudze NVDA:* Różne doświadczenie badaczy w płynnym posługiwaniu się skrótami klawiszowymi czytnika ekranu wpłynęło początkowo na odmienne oceny semantyki skomplikowanych kontrolek filtrów bocznych.
- *Gęstość struktury DOM:* Bardzo duża liczba zagnieżdżonych elementów HTML na liście wyszukiwania utrudniała manualne lokalizowanie konkretnych błędów w narzędziach deweloperskich.

== Study Results

Zbiorcza analiza wykazała zróżnicowany poziom dostosowania desktopowej wersji platformy Allegro. Dokładnie połowa z analizowanych kryteriów (15 z 30) uzyskała jednomyślnie pozytywną ocenę u wszystkich audytorów, co świadczy o solidnych fundamentach dostępności systemu. W wyniku wspólnych dyskusji wypracowano twarde stanowiska co do największych błędów interfejsu. Co istotne, udało nam się w pełni uzgodnić stanowiska wobec pułapek klawiaturowych, problemów z kontrastem i braków w opisach alternatywnych. 1 kryterium zostało uznane jednomyślnie za nieaplikowalne w badanych obszarach ("nie dotyczy").

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
  
  [1.1.1 Treść nietekst.], [Czy złożony element graficzny ma poszerzony opis?], [podstawowy], [N], [N], [N], [N],
  [], [Czy element \<img> ma prawidłowy atrybut \<alt>?], [średni], [P], [P], [P], [P],
  [], [Czy dekoracyjny element \<img> ma pusty \<alt>?], [średni], [ND], [N], [N], [N],
  [1.2.2 Napisy rozsz.], [Czy dla treści wideo dostępne są napisy rozszerzone?], [podstawowy], [P], [P], [N], [P],
  [1.3.1 Info i relacje], [Czy nagłówki są zdefiniowane w logicznej kolejności?], [średni], [N], [P], [N], [N],
  [], [Czy elementy HTML do akcji są poprawnie użyte?], [średni], [P], [P], [P], [P],
  [1.3.2 Zrozum. kolejn.], [Czy kolejność odczytu przez czytnik ekranu jest logiczna?], [podstawowy], [P], [P], [P], [P],
  [1.3.5 Przeznaczenie], [Czy pola formularzy wspierają atrybuty autocomplete?], [średni], [P], [P], [P], [N],
  [1.4.1 Użycie koloru], [Czy kolor nie jest jedynym sposobem przekazywania info?], [podstawowy], [P], [P], [P], [P],
  [1.4.2 Kontrola dźwięku], [Czy jest automatycznie uruchamiany dźwięk? *[K]*], [podstawowy], [P], [P], [P], [P],
  [1.4.3 Kontrast (min.)], [Czy kontrast tekstu do tła wynosi min. 4,5:1?], [średni], [N], [N], [N], [N],
  [1.4.4 Zmiana rozm.], [Czy po powiększeniu do 200% widać komplet danych?], [podstawowy], [P], [N], [P], [P],
  [1.4.5 Obrazy z tekstem], [Czy do przekazywania tekstu używa się rzeczywistego tekstu?], [średni], [N], [N], [N], [N],
  [1.4.10 Reflow], [Czy treść dopasowuje się do ekranu bez przewijania poziomo?], [średni], [P], [P], [P], [P],
  [1.4.11 Kontrast nietekst.], [Czy kontrast elementów nietekstowych wynosi min. 3:1?], [średni], [P], [N], [P], [P],
  [1.4.12 Odstępy w tekście], [Czy zmiana odstępów między literami nie ucina tekstu?], [średni], [P], [P], [P], [P],
  [2.1.1 Klawiatura], [Czy elementy aktywne są dostępne klawiaturą? *[K]*], [podstawowy], [P], [P], [P], [P],
  [2.1.2 Brak pułapki kl.], [Czy na stronie występuje pułapka klawiaturowa? *[K]*], [podstawowy], [N], [N], [N], [N],
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

Poniżej przypisano wyniki w 100% skonsolidowanych metryk ilościowych do pytań badawczych zdefiniowanych w części "Questions and Metrics". Wartości podane poniżej stanowią wynik wspólnej weryfikacji i ostatecznej zgody wszystkich 4 badaczy z naszego zespołu.

=== Q1: Czy interfejs jest w pełni użyteczny dla osób nawigujących wyłącznie klawiaturą?

*Odpowiedź:* Nie w pełni. Główna ścieżka zakupowa była możliwa do przejścia klawiaturą, ale audyt wykazał uciążliwe bariery w postaci pułapek.

*Wyniki metryk:*
- Liczba zidentyfikowanych pułapek klawiaturowych: *3*. Aż dwie z tych pułapek zlokalizowano w galerii zdjęć u sprzedawców (brak wyjścia klawiszem Esc), a jedną w pop-upie reklamowym.
- Odsetek kluczowych funkcji niemożliwych do aktywacji klawiszem Tab: *0%* (wszystkie główne funkcje są dostępne, kryterium 2.1.1 osiągnęło 4/4 oceny P).
- Występowanie i widoczność ramki fokusu na aktywnych przyciskach: *100%* pokrycia na badanej ścieżce (kryterium 2.4.7 osiągnęło 4/4 oceny P).

*Wniosek:* Allegro spełnia podstawowy warunek obsługi bez myszy w głównym procesie zakupowym, ale nie można uznać interfejsu za w pełni dostępny dla użytkowników klawiatury. Główne poprawki powinny skupić się na uwolnieniu fokusu użytkownika po wejściu w galerię zdjęć oferty.

=== Q2: Czy architektura informacji jest poprawnie interpretowana przez czytniki ekranu?

*Odpowiedź:* Częściowo. Podstawowa struktura wielu elementów jest odczytywana poprawnie, ale braki w alternatywnych opisach obrazów i błędy nagłówków ograniczają tę dostępność.

*Wyniki metryk:*
- Liczba grafik informacyjnych pozbawionych opisów alternatywnych / nieprawidłowo osadzonych: *7*. Są to w mniejszym stopniu główne banery reklamowe, ale problem ten dotyczy głównie zdjęć produktu wstawianych bezpośrednio do opisu oferty przez sprzedawcę, które są dla NVDA kompletnie nieme.
- Braki powiązań między etykietami a polami formularzy w warstwie wizualnej: *0* (etykiety działają poprawnie, 4/4 oceny P).
- Braki w uzupełnieniu atrybutów autocomplete: *1* (usterka nr 10, brak autouzupełniania dla formularzy dostawy).
- Błędy w logicznym układzie nagłówków (H1, H2, itd.): *1* powtarzalny problem systemowy w szablonach tworzonych przez sprzedawców.

*Wniosek:* Czytnik ekranu pozwala przejść przez zasadnicze elementy ścieżki, ale architektura informacji kuleje na stronach samych produktów z powodu rażącej ilości grafik od sprzedawców bez opisów alternatywnych oraz braku komunikowania zmian dynamicznych (np. po zastosowaniu filtra AJAX).

=== Q3: Czy szata graficzna i formularze są przyjazne dla osób z dysleksją i słabowidzących?

*Odpowiedź:* W warstwie ogólnej czytelności tak, lecz zidentyfikowano braki w doborze kontrastu dla mniejszych tekstów oraz w sposobie prezentacji błędów.

*Wyniki metryk:*
- Liczba elementów nieosiągających minimalnego kontrastu tekstu do tła (4.5:1): *4*. Znaleźliśmy 4 elementy posiadające niewystarczający kontrast – w większości jest to jasnoszary tekst na białym tle (np. mniejsze dopiski u sprzedawców lub tekst w stopce strony).
- Błędy renderowania przy powiększeniu interfejsu do 200%: *1* (usterka nr 7: nakładanie się na siebie ikon i tekstu dostawy na liście wyników).
- Liczba niejasnych komunikatów w procesie zgłaszania błędów walidacji: *3* (usterka nr 5: prawidłowe opisy są obecne, ale wyskakują asynchronicznie, bez przeniesienia fokusu dla osób potrzebujących natychmiastowej uwagi).

*Wniosek:* Chociaż Allegro jest platformą responsywną, obecność tekstów o zbyt niskim kontraście (szary na białym) oraz pojawianie się błędów poza polem widzenia to bariery utrudniające proces decyzyjny osobom słabowidzącym lub z zaburzeniami percepcji.

=== Q4: Jaki jest zbiorczy poziom dostępności cyfrowej dla analizowanego procesu?

*Odpowiedź:* Zbiorczy poziom dostępności jest umiarkowanie dobry. Po wspólnych poprawkach i konsensusie wyeliminowano część rozbieżności, co pozwala na twarde zidentyfikowanie najsłabszych obszarów serwisu.

*Wyniki metryk zbiorczych:*
- Zsumowana liczba kryteriów z oceną pozytywną (zgodnych z WCAG): *77* oceny cząstkowe.
- Zsumowana liczba kryteriów oblanych (oceny negatywne): *38* ocen cząstkowych.
- Zsumowana liczba kryteriów o statusie "nie dotyczy": *5* ocen cząstkowych.
- Średni odsetek zgodności ze standardem dla wybranych kryteriów z listy kontrolnej: *66.96%* nie biorąc pod uwagę statusu nie dotyczy (77/115)
- Podział wykrytych usterek ze względu na ich krytyczność: zidentyfikowano łącznie *11* unikalnych usterek (6 istotnych i 5 nieistotnych).
- Liczba punktów spornych między ewaluatorami wyniosła 10. W przypadku metryk ilościowych (np. ilość pułapek klawiaturowych) dane te były szczegółowo ustalane w przypadku rozbieżności całym zespołem.

*Wniosek:* Po wypracowaniu wspólnych wniosków stało się jasne, że chociaż silnik Allegro jest zoptymalizowany, realne zagrożenie dla użyteczności platformy stanowią treści dodawane od strony sprzedawców (galerie bez Esc, brak "altów", szare teksty).

#v(1.5em)

*Zestawienie Pytania Kluczowe - Podsumowanie:*
- *Czy wszystkie elementy aktywne w serwisie są dostępne za pomocą klawiatury?* \
  -> _pozytywna, zgodna_ - oznaczono na podstawie braku jakichkolwiek problemów przy wywoływaniu głównej ścieżki koszyka.
- *Czy jest na stronie pułapka klawiaturowa?* \
  -> _niezgodna, usterka jednogłośna_ - cały zespół wypracował zgodne stanowisko, wskazując obecność 3 pułapek klawiaturowych (w tym 2 blokujących na stałe w galerii zdjęć).
- *Czy jest automatycznie uruchamiany dźwięk, którego nie da się zatrzymać?* \
  -> _pozytywna, zgodna_ - testy były całkowicie wolne od obciążeń dźwiękowych.

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
  
  [1.], [Strona główna / Oferty], [Brak tekstów alternatywnych w grafikach. Wykryto 7 takich elementów (część to banery, ale głównie zdjęcia produktu od sprzedawcy). \ *Rekomendacja:* Wymusić atrybuty `alt` opisujące treść zdjęć podczas wystawiania oferty.], [istotne],
  [2.], [Wyniki wyszukiwania], [Dynamiczne przeładowanie filtrów (AJAX) nie jest anonsowane głosowo. \ *Rekomendacja:* Wdrożyć regiony `aria-live="polite"` dla odświeżania.], [istotne],
  [3.], [Szczegóły oferty], [Zaburzona struktura nagłówków w sekcji opisu u sprzedawców. \ *Rekomendacja:* Wprowadzić systemowy szablon wymuszający hierarchię.], [nieistotne],
  [4.], [Galeria zdjęć oferty / Popup], [Pułapka klawiaturowa (łącznie 3 przypadki: 2 uwięzienia fokusu w trybie pełnoekranowym galerii i 1 w oknie popup). Brak obsługi wyjścia klawiszem Esc. \ *Rekomendacja:* Dodać w architekturze okien modalnych listener reagujący na "Esc"], [istotne],
  [5.], [Koszyk i dostawa], [Komunikaty błędów walidacji wyskakują z boku bez przeniesienia fokusu. \ *Rekomendacja:* Automatycznie kierować fokus na pole z błędem.], [istotne],
  [6.], [Stopka strony], [Otwieranie linków zewnętrznych w nowej karcie bez powiadomienia ARIA. \ *Rekomendacja:* Dodać ukryty tekst `aria-label="nowe okno"`.], [istotne],
  [7.], [Wyniki wyszukiwania], [Przy powiększeniu widoku (200%) ikonki dostawy nakładają się na tekst. \ *Rekomendacja:* Poprawić elastyczność kontenerów w CSS.], [nieistotne],
  [8.], [Strona płatności], [Przycisk sfinalizowania zamówienia generuje powtórzenia w czytniku. \ *Rekomendacja:* Oczyścić etykietę przycisku z nadmiarowych znaczników.], [nieistotne],
  [9.], [Szczegóły oferty (sekcja "Opis")], [Część sprzedawców umieszcza ważne informacje jako grafiki z tekstem, co uniemożliwia ich odczytanie przez NVDA. \ *Rekomendacja:* Wymusić stosowanie rzeczywistego tekstu HTML.], [istotne],
  [10.], [Koszyk / Formularz dostawy], [Brak atrybutów `autocomplete` na polach danych zamawiającego (np. email, telefon). \ *Rekomendacja:* Uzupełnić kody inputów o właściwe tagi autocomplete.], [nieistotne],
  [11.], [Szczegóły oferty / Stopka], [4 elementy tekstowe nie spełniają wymogów minimalnego kontrastu WCAG (jasnoszary tekst na białym tle). \ *Rekomendacja:* Przyciemnić odcień czcionki do momentu osiągnięcia kontrastu 4.5:1.], [istotne]
)

// ── 4. Conclusions ────────────────────────────────────────────────────────
= Conclusions and Implications of the Study

Przeprowadzone badanie pozwala stwierdzić, że Allegro jest nowoczesną platformą e-commerce o wysokiej ogólnej dostępności cyfrowej w badanej ścieżce. Główne i najbardziej krytyczne kroki (od wyszukania po finalizację koszyka) były możliwe do przejścia bez użycia myszy oraz z wykorzystaniem technologii wspierających, choć audyt wykazał kilka istotnych barier.

Mimo to, audyt uwidocznił powtarzające się bariery, które obniżają komfort osób niepełnosprawnych, a zignorowane mogą miejscami wykluczać użytkowników. 

*Najistotniejsze zidentyfikowane problemy:*
- *Zjawisko pułapek klawiaturowych (Keyboard traps)* występujące aż trzykrotnie na przestrzeni całego doświadczenia, w tym najbardziej drastyczne w obrębie zdjęć u poszczególnych sprzedawców, permanentnie blokujące dalszą ścieżkę.
- *Braki semantyczne i tekstowe:* Wykrycie aż 7 rażących braków w atrybutach alternatywnych grafik oraz obecność tekstów poniżej wytycznych kontrastu (szary na białym) dowodzą, że pomimo poprawnego kodu rdzenia Allegro, nie panuje wystarczająca kontrola nad treściami wlewanymi bezpośrednio przez sprzedawców.
- *Dynamiczne przeładowania list (AJAX/Fetch)* przy wyborze filtrów bocznych bez wykorzystania odpowiednich regionów ARIA (`aria-live`).

*Ograniczenia badania i idealny model badawczy:*
Należy podkreślić, że nasze wnioski opierają się wyłącznie na audycie eksperckim (liście kontrolnej). Z biznesowego i użytecznościowego punktu widzenia, znacznie lepszym rozwiązaniem byłoby przeprowadzenie testów z prawdziwymi osobami z określonymi deficytami (wzrokowymi, motorycznymi, poznawczymi). Wymagałoby to stworzenia docelowych person i zrekrutowania rzeczywistych badanych, do których w warunkach tego projektu akademickiego nie mieliśmy jednak dostępu. Docelowo dobrą i najbardziej kompletną opcją byłoby połączenie obu tych rozwiązań (podejście hybrydowe). Połączenie technicznej ewaluacji z listą kontrolną z empirycznymi testami przejścia przez proces zakupowy przez rzeczywiste osoby z niepełnosprawnościami, pozwoliłoby zmierzyć zarówno zgodność z normami (WCAG), jak i realny stopień frustracji użytkowników.

*Implikacje dla rozwoju aplikacji:*
Platforma powinna zainwestować w ujednolicenie komponentów galerii modalnych, by zawsze respektowały one ucieczkę przez "Esc" (WCAG 2.1.2). Ponadto system dodawania aukcji (od strony sprzedawcy) mógłby wdrożyć automatyczne walidatory wymuszające podstawową dostępność, na przykład podpowiadające dodanie `alt` tekstu po przesłaniu grafiki produktu i blokujące dodawanie stylów CSS nadpisujących kolor tekstu na szarości nieprzechodzące walidacji kontrastu.

// ── 5. Lessons learned ────────────────────────────────────────────────────
= Lessons Learned

*Co poszło dobrze:*
Skrupulatnie przeprowadzona procedura weryfikacji stanowiska (rozdzielczość 24 cali, Incognito, to samo konto testowe) z wykorzystaniem serwera Discord była dobrą decyzją - zostało to poprawione względem poprzedniego etapu projektu. Pozwoliło to uniknąć błędów pomiarowych wynikających z różnic sprzętowych czy zainstalowanych wtyczek użytkownika. Faza dyskusji grupowej nad spornymi elementami zaowocowała ostatecznym, pewnym konsensusem (np. w przypadku 3 zidentyfikowanych pułapek klawiaturowych), co pozwoliło ustalić niezwykle twarde metryki ilościowe pozbawione domysłów.

*Czego się nauczyliśmy:*
Doświadczenie z oprogramowaniem czytającym ekran (NVDA) znacząco zmieniło nasze postrzeganie semantyki kodu HTML. Nawet strona przechodząca poprawnie automatyczne audyty, wciąż może stanowić wyzwanie ze względu na szum informacyjny lub zawartość wprowadzaną asynchronicznie, czy wręcz przez użytkowników (sprzedawców Allegro), z pominięciem zasad projektowania włączającego. Ponadto, zrozumieliśmy, że nawet najbardziej systematyczna ewaluacja ekspercka jest w pewnym sensie symulacją i nie jest w stanie w 100% oddać codziennych wyzwań i prawdziwej nawigacji osób trwale borykających się z niepełnosprawnościami.

*Co byśmy zrobili inaczej (refleksja nad planem):*
Pomimo rygorystycznego ujednolicenia naszego sprzętu, rozdzielczości ekranów i trybu przeglądarki, przekonaliśmy się, jak silnie spersonalizowanym i dynamicznym organizmem jest Allegro. Platformy o takiej skali nieustannie prowadzą wewnętrzne testy A/B interfejsu. Skutkowało to tym, że algorytmy i tak potrafiły zaserwować różnym audytorom minimalnie inny układ okien reklamowych czy wariant koszyka, co wywoływało zjawiska takie jak zablokowanie fokusu w popupach u części z nas, a u części nie. Gdybyśmy mieli powtórzyć to badanie z większymi zasobami, staralibyśmy się wdrożyć rozwiązanie hybrydowe: zorganizowalibyśmy proces rekrutacji, określili persony i zestawili naszą listę kontrolną bezpośrednio z wynikami przejścia ścieżki zakupowej (walkthrough) przez rzeczywiste osoby z deficytami, oraz dodatkowo wymusili stałe parametry sesji A/B platformy dla ujednolicenia wzasobamiidoków.