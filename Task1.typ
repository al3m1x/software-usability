#set document(title: "Software Usability Project - Final Report")
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

#align(center)[
  #text(size: 16pt, weight: "bold")[Software Usability Project - Final Report]
  #v(0.8em)
  Adrian Szwaczyk s193233 \
  Juliusz Radziszewski s193504 \
  Maciej Żuralski s193367 \
  Sebastian Kwaśniak s188807
]

#v(1.5em)
#line(length: 100%, stroke: 0.5pt)
#v(1em)

= Analysis of the Software / Prototype Under Investigation

#text(style: "italic")[Software:]

- *Nazwa:* Allegro - serwis internetowy e-commerce typu marketplace, analizowany w widoku desktopowym w przeglądarce.
- *Cel:* Allegro umożliwia kupującym wyszukiwanie, porównywanie i zakup produktów od wielu sprzedawców w jednym serwisie. Z punktu widzenia kupującego główną wartością systemu jest szybkie znalezienie odpowiedniej oferty, zrozumienie warunków zakupu, wybór dostawy i płatności oraz przejście przez koszyk bez utraty kontroli nad decyzją zakupową.
- *Klienci, użytkownicy* (customer != user): Użytkownikami są przede wszystkim kupujący oraz sprzedawcy. W tym badaniu skupiamy się wyłącznie na kupujących (ze szczególnym uwzględnieniem kupujących okazjonalnych), ponieważ to oni wykonują analizowany proces wyszukiwania i zakupu. Klientami biznesowymi Allegro są głównie sprzedawcy płacący prowizje, opłaty za promowanie ofert i korzystanie z narzędzi sprzedażowych. Dodatkową grupą klientów są kupujący opłacający usługi premium, np. Allegro Smart.
- *Kontekst użycia:* Badanie dotyczy korzystania z serwisu internetowego Allegro w widoku desktopowym, w najnowszej dostępnej wersji przeglądarki Google Chrome, na komputerze lub laptopie, w warunkach domowych i przy typowym połączeniu internetowym. Zakładamy sytuację, w której użytkownik samodzielnie szuka produktu, porównuje kilka ofert i przechodzi do koszyka. Badanie nie obejmuje rzeczywistego opłacenia zamówienia.
- *Funkcjonalności:* Wyszukiwarka produktów, kategorie, filtry, sortowanie, rekomendacje, lista wyników, strona oferty, informacje o sprzedawcy, opinie, koszyk, wybór dostawy, wybór metody płatności, logowanie lub przejście przez proces jako użytkownik z istniejącym kontem.
- *Wymagania niefunkcjonalne:* Krótki czas odpowiedzi wyszukiwarki i filtrów, stabilność działania koszyka, bezpieczeństwo danych i transakcji, czytelność interfejsu, spójność nawigacji, responsywność układu oraz wysoka dostępność serwisu przy dużym obciążeniu.

= User Analysis

Badanie użyteczności mogłoby potencjalnie objąć kilka różnych grup użytkowników, których doświadczenie z platformą Allegro znacząco się od siebie różni:

- *Nowi użytkownicy:* Osoby, które nie korzystają z e-commerce i nie znają w ogóle platformy.
- *Okazjonalni kupujący:* Osoby korzystające z Allegro kilka razy w roku, zwykle wtedy, gdy szukają konkretnego produktu. Znają ogólne zasady zakupów w internecie, ale nie pamiętają na pamięć układu konkretnych opcji w serwisie.
- *Regularni kupujący:* Osoby często korzystające z konta, operujące na tzw. "pamięci mięśniowej".
- *Użytkownicy ostrożni cenowo:* Osoby bardzo dogłębnie analizujące każdą ofertę.

*Wybór grupy docelowej badania:*
Z powyższych grup, na potrzeby tego badania, *wybieramy wyłącznie jedną, docelową grupę: okazjonalnych kupujących*. Zrezygnowano z badania "nowych użytkowników", ponieważ ich problemy mogłyby wynikać z ogólnego braku kompetencji cyfrowych, a nie z błędów samego interfejsu. Z kolei "regularni kupujący" działają zbyt automatycznie, co maskuje rzeczywiste problemy nawigacyjne. 

Grupa okazjonalnych kupujących jest *najbardziej reprezentatywna* do oceny "czystej" użyteczności. Potrzebują oni sprawnej wyszukiwarki, zrozumiałych filtrów oraz łatwego porównania ceny i dostawy. Skupienie się tylko na tej jednej, homogenicznej grupie pozwoli nam na rzetelne i miarodajne porównywanie wyników pomiędzy poszczególnymi sesjami badawczymi, co dostarczy najbardziej wartościowych informacji analitycznych.

= Usability Study

== Purpose and Scope of the Study

*Cel (Goal - GQM):* Analiza serwisu internetowego Allegro w widoku desktopowym, uruchamianego w przeglądarce Google Chrome, pod kątem użyteczności, w celu oceny skuteczności, efektywności, zrozumiałości nawigacji oraz satysfakcji użytkownika, wyłącznie z punktu widzenia *okazjonalnych kupujących*, w kontekście domowego korzystania z serwisu podczas wyszukiwania produktu, używania filtrów oraz przechodzenia przez koszyk.

Badanie ma charakter mieszany. Część jakościowa obejmuje obserwację użytkowników, protokół głośnego myślenia i krótkie wywiady. Część ilościowa obejmuje pomiar czasu, skuteczności, liczby błędów oraz ankiety użyteczności.

Zakres badania obejmuje:
- stronę główną i rozpoczęcie wyszukiwania,
- listę wyników, sortowanie i filtry,
- stronę szczegółów oferty, porównanie informacji,
- dodanie produktu do koszyka i wybór parametrów dostawy/płatności.

*Definicje i standaryzacja pojęć (w celu zapewnienia odtwarzalności):*
Aby uniknąć rozbieżności w interpretacji zachowań przez różnych członków zespołu, przyjęto następujące definicje:
- *Sukces:* Zadanie wykonane samodzielnie, bez błędów i podpowiedzi.
- *Sukces częściowy:* Zadanie wykonane, ale po długim błądzeniu, licznym cofaniu się lub po wskazówce moderatora.
- *Zawahnie:* Wyraźne wstrzymanie ruchu kursorem, poszukiwanie wzrokiem lub bezcelowe scrollowanie trwające powyżej 3 sekund. Nie wliczamy w to np. długiego szukania danego filtru spośród długiej listy, gdyż użytkownik wie co i gdzie znaleźć. Chodzi o momenty konsternacji.
- *Błędne kliknięcie:* Kliknięcie w element niebędący interaktywnym, rozwinięcie niewłaściwego menu lub kliknięcie w link wymuszające natychmiastowy powrót (przycisk "wstecz").
- *Błąd nawigacyjny:* Przejście na złą podstronę, która nie przybliża użytkownika do celu zadania i wymaga fizycznego cofnięcia się w przeglądarce lub serwisie (np. omyłkowe kliknięcie w banner reklamowy, przejście do niewłaściwej kategorii lub strony profilowej sprzedawcy).
- *Zgłoszenie użytkownika (problem jakościowy):* Werbalnie wyrażona frustracja, uwaga (np. "nie rozumiem co to znaczy", "gdzie jest ten przycisk") wypowiedziana w ramach głośnego myślenia.

*Pytania i metryki (Questions and Metrics):*
- *Q1: Czy użytkownicy rozumieją stronę główną i potrafią dokonać wyszukiwania produktu?* \
  *Metryki:* czas do skończenia pierwszego wyszukiwania; wskaźnik sukcesu samodzielnego znalezienia wyszukiwarki.
- *Q2: Czy wyszukiwarka i filtry pomagają znaleźć odpowiednią ofertę?* \
  *Metryki:* wskaźnik sukcesu znalezienia odpowiedniej oferty; czas od zastosowania wszystkich filtrów do wyboru oczekiwanej oferty (wliczając czas na zastosowanie sortowania); liczba niepoprawnie użytych lub cofniętych filtrów.
- *Q3: Czy użytkownicy poprawnie interpretują stronę oferty?* \
  *Metryki:* liczba poprawnych odpowiedzi (nazwa modelu, cena, koszt dostawy, cena dostawy, zwroty).
- *Q4: Czy proces koszyka jest zrozumiały?* \
  *Metryki:* wskaźnik ukończenia zadania (przejście przez koszyk, ustalenie poprawnych opcji dostawy i płatności); czas przejścia koszyka.
- *Q5: Jak użytkownicy oceniają ogólną użyteczność poszczególnych widoków?* \
  *Metryki:* średnia ocena z 3 pytań krótkiej ankiety podsumowującej; średnia ocena w skali SEQ.
- *Q6: Czy cały proces zakupu od znalezienia produktu do ekranu płatności był zrozumiały i przebiegł sprawnie? (Metryki ogólne)* \
  *Metryki:* całkowity czas wykonania wszystkich zadań, łączna liczba momentów zawahania, łączna liczba błędnych kliknięć oraz liczba błędów nawigacyjnych na przestrzeni całego badania.

== Study Plan

*Wybrane metody i odtwarzalność badania:*

- *Moderowany test użyteczności z protokołem głośnego myślenia.* Pozwala obserwować zachowania i jednocześnie zbierać komentarze. 
- *Nagrywanie sesji.* Wszystkie sesje będą rejestrowane (obraz ekranu i dźwięk). Umożliwi to późniejszą *wspólną analizę przez cały zespół badawczy*. Dzięki temu wyeliminowane zostaną rozbieżności w ocenie i kategoryzacji – zespół wspólnie zdecyduje, czy dana akcja była zawahaniem, czy błędnym kliknięciem.
- *Ankiety (Treść narzędzi badawczych):*
  - *Ankieta wstępna (kwalifikacyjna):* "Jak często robisz zakupy w internecie?" (szukamy kupujących od kilku do kilkunastu razy w roku w dowolnym serwisie internetowym).
  - *SEQ (Single Ease Question):* Zadawane po każdym zadaniu: "W skali od 1 do 7, gdzie 1 to bardzo trudne, a 7 to bardzo łatwe, jak oceniasz trudność tego zadania?".
  - *Krótka ankieta podsumowująca:* Przeprowadzana na sam koniec sesji. Składa się z 3 kluczowych stwierdzeń, które użytkownik ocenia w skali Likerta (1 - Zdecydowanie się nie zgadzam, do 5 - Zdecydowanie się zgadzam):
    1. "Ogólne korzystanie z serwisu i poruszanie się po nim było dla mnie łatwe i intuicyjne."
    2. "Informacje prezentowane na stronie (filtry, parametry oferty, opcje dostawy) były czytelne i w pełni zrozumiałe."
    3. "Proces dodawania produktu do koszyka i wyboru opcji zakupu przebiegł sprawnie i bez poczucia frustracji."

*Planowana próba:*
Badanie zostanie przeprowadzone na grupie *6-8 osób należących wyłącznie do grupy docelowej "okazjonalnych kupujących"*. Zawężenie próby do jednej homogenicznej grupy pozwoli na spójne i miarodajne zestawienie oraz porównanie wyników między badanymi.

*Harmonogram całego projektu badawczego:*
1. *Faza 1 (Przygotowanie):* Skompletowanie scenariusza, konfiguracja narzędzi do nagrywania, rekrutacja 6-8 uczestników z grupy docelowej.
2. *Faza 2 (Sesje badawcze):* Przeprowadzenie pojedynczych spotkań (około 20-40 min każde). Spotkania w formule 1 na 1 (członek zespołu i osoba badana).
3. *Faza 3 (Analiza nagrań):* Wspólne odtworzenie nagrań przez zespół, przypisanie metryk i uzupełnienie tabeli wyników.
4. *Faza 4 (Raportowanie):* Porównanie zebranych wyników i opracowanie rekomendacji w finalnym raporcie.

*Przebieg pojedynczej sesji badawczej (ok. 20-40 min):*
- 5 minut - wprowadzenie, zgoda na nagrywanie, wyjaśnienie, że badany jest system, a nie użytkownik.
- 3 minuty - ankieta wstępna kwalifikacyjna.
- 5-25 minut - wykonanie zadań badawczych z głośnym myśleniem (ankieta SEQ po każdym kroku, długość zależna od szybkości wykonywania zadań przez użytkownika).
- 5 minut - krótka ankieta podsumowująca i podsumowanie.

*Scenariusz zadań:*
Wszystkie zadania dotyczą tego samego produktu: mysz bezprzewodowa *Logitech Wireless Mouse M185*, kolor szary, numer producenta *910-002235*. 

- *Zadanie 1:* Na stronie głównej Allegro wyszukaj produkt wpisując frazę "mysz komputerowa". Przejdź do kategorii "Myszki".
- *Zadanie 2:* Zawęź wyniki za pomocą filtrów ustalając parametry: producent Logitech, stan nowy, typ myszy bezprzewodowa, komunikacja bezprzewodowa, kolor szary, cena od 40 zł do 90 zł.
- *Zadanie 3:* Dodaj kolejne ograniczenia: dostawa z Allegro Smart, dostawa do paczkomatu InPost, sprzedawca z oznaczeniem Super Sprzedawca. Następnie posortuj wyniki według ceny z dostawą od najniższej.
- *Zadanie 4:* Otwórz pierwszą ofertę z listy wyników, która spełnia wszystkie powyższe kryteria. Na stronie oferty sprawdź i wskaż badaczowi: pełną nazwę modelu, cenę produktu, koszt dostawy, przewidywany termin dostawy do paczkomatu, ocenę sprzedawcy oraz informację o możliwości zwrotu.
- *Zadanie 5:* Dodaj produkt do koszyka w liczbie 1 sztuki. Przejdź do koszyka. W koszyku wybierz dostawę do paczkomatu InPost oraz metodę płatności BLIK. Zatrzymaj się na ekranie poprzedzającym ostateczne potwierdzenie zamówienia.
- *Zadanie 6:* Cofnij się do wyników wyszukiwania i usuń filtr dotyczący ceny. Następnie sprawdź, czy po jego usunięciu jesteś w stanie sprawnie wrócić do wcześniej przeglądanej oferty.

*Sposób analizy i porównywania wyników:*
- *Dane ilościowe:* Zostaną zestawione w zbiorczej tabeli, co pozwoli łatwo porównać czasy wykonania oraz SEQ pomiędzy wszystkimi 6-8 użytkownikami, identyfikując najsłabsze punkty serwisu.
- *Dane jakościowe (kategoryzacja):* Obserwacje i zgłoszenia od użytkowników zostaną przeniesione do arkusza kalkulacyjnego (np. Excel) z ustalonymi kolumnami: *Etap (np. Koszyk)*, *Kategoria problemu (np. Etykieta przycisku / Układ strony)*, *Opis zachowania*, *Priorytet (Krytyczny, Istotny, Drobny)*. Taka strukturyzacja i pogrupowanie problemów jakościowych pozwoli wyciągnąć syntetyczne i bardzo wartościowe wnioski, zamiast chaotycznego opisu uwag.

== Study Execution

Badanie zostało zrealizowane na grupie docelowej określonej w dokumencie jako okazjonalni kupujący. W procesie rekrutacji nie ograniczał nas twardy przedział wiekowy, lecz zachowania użytkowników – częstotliwość korzystania z platformy Allegro (lub innych serwisów e-commerce) oraz ogólny poziom biegłości w obsłudze komputera. Zależało nam na przetestowaniu interfejsu na osobach, które nie działają "na pamięć" i nie mają wypracowanych silnych nawyków w poruszaniu się po serwisie.

Do tej pory udało się zrealizować i poddać analizie sesje z czterema osobami (pozostałe wyniki zostaną uzupełnione po zebraniu danych przez resztę zespołu):

- *Uczestnik 1 (P1):* Mężczyzna, 59 lat. Słabo posługuje się komputerem, jednak w przeszłości dosyć często dokonywał zakupów na Allegro.
- *Uczestnik 2 (P2):* Kobieta, 56 lat. Sprawnie posługuje się komputerem i regularnie robi zakupy na różnych stronach internetowych, jednak z platformy Allegro nie korzystała od kilku lat.
- *Uczestnik 3 (P3):* Kobieta, 54 lat. Kupuje okazjonalnie, woli tradycyjne sklepy stacjonarne, ale używa komputera w codziennej pracy, więc sprawnie porusza się po interfejsach.
- *Uczestnik 4 (P4):* Mężczyzna, 55 lat. Korzysta z internetu głównie do czytania wiadomości lokalnych. Bardzo rzadko kupuje online i podczas badania potrzebowała więcej czasu na odnalezienie interaktywnych elementów.
- *Uczestnicy P5-P8:* [Dane demograficzne zostaną dodane w finalnej wersji raportu po zrealizowaniu sesji].

== Study Results

Poniżej zestawiono dotychczas zebrane dane ilościowe oraz wybrane obserwacje jakościowe z pierwszych czterech sesji badawczych. Tabele zostały przygotowane tak, aby umożliwić łatwą rozbudowę o wyniki kolejnych uczestników.

*Tabela 1. Wyniki szczegółowe dla poszczególnych pytań badawczych (Q1-Q5)*
#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: center + horizon,
    [*ID*], [*Q1 Czas* \ (do wyszukiwania)], [*Q2 Czas* \ (filtry -> oferta)], [*Q2 Błędy* \ (niepoprawne filtry)], [*Q3 Popr. odp.* \ (informacje)], [*Q4 Czas* \ (koszyk)], [*Q5 Śr. ocena* \ (Ankieta 1-5)],
    [P1], [0:19], [0:32], [1], [4/4], [1:33], [4.67],
    [P2], [0:11], [0:14], [1], [4/4], [0:45], [4.33],
    [P3], [0:15], [0:24], [0], [4/4], [1:29], [4.00],
    [P4], [0:26], [0:42], [2], [3/4], [1:15], [3.33],
    [P5], [-], [-], [-], [-], [-], [-],
    [P6], [-], [-], [-], [-], [-], [-],
    [P7], [-], [-], [-], [-], [-], [-],
    [P8], [-], [-], [-], [-], [-], [-],
  ),
  caption: [Szczegółowe metryki czasowe, liczbowe oraz ocena użyteczności dla etapów Q1-Q5],
)

*Tabela 2. Wskaźnik sukcesu dla kluczowych pytań badawczych*
#figure(
  table(
    columns: (auto, auto, auto, auto),
    align: center + horizon,
    [*ID*], [*Q1 / Zad. 1* \ (Pierwsze wyszukiwanie)], [*Q2 / Zad. 2-3* \ (Znalezienie oferty z filtrami)], [*Q4 / Zad. 5* \ (Przejście przez koszyk)],
    [P1], [Sukces], [Sukces], [Sukces],
    [P2], [Sukces], [Sukces częściowy], [Sukces],
    [P3], [Sukces], [Sukces], [Sukces],
    [P4], [Sukces], [Sukces częściowy], [Sukces częściowy],
    [P5], [-], [-], [-],
    [P6], [-], [-], [-],
    [P7], [-], [-], [-],
    [P8], [-], [-], [-],
  ),
  caption: [Ocena stopnia ukończenia głównych etapów (Sukces / Sukces częściowy / Niepowodzenie)],
)

*Tabela 3. Ogólne metryki sesji (Q6: Ocena sprawności całego procesu)*
#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    align: center + horizon,
    [*ID*], [*Czas całkowity*], [*Łączna l. zawahań*], [*Łączna l. błędnych klik.*], [*L. błędów nawigacyjnych*],
    [P1], [14:31], [5], [2], [1],
    [P2], [09:08], [2], [1], [0],
    [P3], [13:55], [4], [3], [0],
    [P4], [15:22], [6], [2], [2],
    [P5], [-], [-], [-], [-],
    [P6], [-], [-], [-], [-],
    [P7], [-], [-], [-], [-],
    [P8], [-], [-], [-], [-],
  ),
  caption: [Ogólne metryki użyteczności rejestrowane na przestrzeni całego badania (Q6)],
)

*Tabela 4. Czas wykonania poszczególnych zadań (Zadania 1-6)*
#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: center + horizon,
    [*ID*], [*Zadanie 1*], [*Zadanie 2*], [*Zadanie 3*], [*Zadanie 4*], [*Zadanie 5*], [*Zadanie 6*],
    [P1], [0:50], [3:01], [3:11], [4:29], [2:13], [0:47],
    [P2], [0:31], [1:47], [2:52], [1:50], [1:20], [0:48],
    [P3], [0:45], [2:30], [3:05], [3:50], [2:40], [1:05],
    [P4], [1:10], [3:45], [3:30], [4:10], [1:52], [0:55],
    [P5], [-], [-], [-], [-], [-], [-],
    [P6], [-], [-], [-], [-], [-], [-],
    [P7], [-], [-], [-], [-], [-], [-],
    [P8], [-], [-], [-], [-], [-], [-],
  ),
  caption: [Czasy realizacji poszczególnych zadań ze scenariusza (na podstawie nagrań)],
)

*Tabela 5. Wyniki ankiet: SEQ po każdym zadaniu oraz Krótka Ankieta Podsumowująca*
#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
    align: center + horizon,
    [*ID*], [*T1 (1-7)*], [*T2 (1-7)*], [*T3 (1-7)*], [*T4 (1-7)*], [*T5 (1-7)*], [*T6 (1-7)*], [*Ank. 1 (1-5)*], [*Ank. 2 (1-5)*], [*Ank. 3 (1-5)*],
    [P1], [7], [5], [6], [6], [5], [6], [5], [4], [5],
    [P2], [6], [6], [6], [7], [6], [7], [4], [4], [5],
    [P3], [6], [6], [5], [6], [5], [6], [4], [4], [4],
    [P4], [5], [4], [4], [5], [4], [5], [3], [3], [4],
    [P5], [-], [-], [-], [-], [-], [-], [-], [-], [-],
    [P6], [-], [-], [-], [-], [-], [-], [-], [-], [-],
    [P7], [-], [-], [-], [-], [-], [-], [-], [-], [-],
    [P8], [-], [-], [-], [-], [-], [-], [-], [-], [-],
  ),
  caption: [Wyniki ankiet w skali Likerta i SEQ],
)

*Tabela 6. Kluczowe problemy jakościowe zauważone u P1-P4*
#figure(
  table(
    columns: (auto, auto, auto, 1fr),
    align: left + horizon,
    [*ID*], [*Etap*], [*Typ problemu*], [*Opis zgłoszenia / Obserwacja*],
    [P1], [Lista / Sortowanie], [Widoczność], [Czcionka napisu "sortowanie" jest bardzo mała i w szarym kolorze, który zlewa się z tłem.],
    [P1, P2], [Filtry], [Mylący interfejs], [Szukając opcji Allegro Smart użytkownicy omyłkowo chcieli kliknąć w mocno wyeksponowany napis "Okazje! Smart".],
    [P1], [Strona oferty], [Architektura inf.], [Użytkownik miał duże trudności ze znalezieniem informacji o sprzedawcy i jego ocenie.],
    [P2], [Filtry], [Intuicyjność], [Filtry ceny okazały się nieintuicyjne - docelowy przedział cenowy jest ukryty pod predefiniowanymi opcjami typu "mniej niż 75 zł".],
    [P3], [Koszyk], [Widoczność], [Przycisk zmiany metody płatności z domyślnej na BLIK był początkowo niezauważony, przez co użytkownik zawahał się przed zatwierdzeniem.],
    [P4], [Strona główna], [Nawigacja], [Użytkownik na początku pomylił duży banner reklamowy z wynikami wyszukiwania, co spowodowało błąd nawigacyjny i powrót wstecz.],
    [P5+], [-], [-], [-],
  ),
  caption: [Zgłoszone i zaobserwowane problemy jakościowe z podziałem na etapy],
)

= Conclusions and Implications of the Study

[Sekcja zostanie uzupełniona po analizie wszystkich 6-8 sesji badawczych. Znajdą się w niej rekomendacje projektowe wynikające z zebranych problemów jakościowych i najniżej ocenianych przez użytkowników etapów w ankietach SEQ.]

= Lessons Learned

Przeprowadzenie pierwszych sesji badawczych w roli moderatora dostarczyło nam kilku cennych wniosków na temat samej metodyki testów użyteczności oraz wyzwań związanych z pracą z użytkownikiem:

- *Trudność w powstrzymywaniu się od interwencji:* Największym wyzwaniem dla badacza było zachowanie pełnego obiektywizmu i niepomaganie użytkownikowi. Obserwowanie, jak uczestnik frustruje się lub wielokrotnie omija wzrokiem poszukiwany przycisk (który dla badacza jest oczywisty), wywoływało silną, naturalną chęć podpowiedzenia.
- *Bariera "głośnego myślenia" (Think-aloud):* Utrzymanie ciągłości protokołu głośnego myślenia wymagało dużej aktywności ze strony moderatora. Uczestnicy mieli tendencję do skupiania się na rozwiązywaniu zadania w ciszy. Często trzeba było im przypominać o konieczności komentowania swoich działań lub zadawać pytania pomocnicze (np. "Czego w tej chwili szukasz?").
- [Kolejne obserwacje własne zostaną dopisane po zebraniu doświadczeń z sesji moderowanych przez pozostałych członków zespołu].
