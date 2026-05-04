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
- *Kontekst użycia:* Badanie dotyczy korzystania z serwisu internetowego Allegro w widoku desktopowym, w najnowszej dostępnej wersji przeglądarki Google Chrome, na komputerze lub laptopie, w warunkach domowych i przy typowym połączeniu internetowym. Zakładamy sytuację, w której użytkownik samodzielnie szuka produktu, porównuje kilka ofert i przechodzi do koszyka. Badanie nie obejmuje rzeczywistego opłacenia zamówienia. Na potrzeby testu, użytkownik dostaje zalogowane konto w serwisie, ponieważ ocena użyteczności procesu rejestracji/logowania znajduje się poza zakresem tego badania.
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
- *Zadanie 2:* Zawęź wyniki za pomocą filtrów ustalając parametry: producent Logitech, stan nowy, typ myszy bezprzewodowa, kolor szary, cena od 40 zł do 90 zł.
- *Zadanie 3:* Dodaj kolejne ograniczenia: dostawa z Allegro Smart, dostawa do paczkomatu InPost, sprzedawca z oznaczeniem Super Sprzedawca. Następnie posortuj wyniki według ceny z dostawą od najniższej.
- *Zadanie 4:* Otwórz pierwszą ofertę z listy wyników, która spełnia wszystkie powyższe kryteria. Na stronie oferty sprawdź i wskaż badaczowi: pełną nazwę modelu, cenę produktu, koszt dostawy, przewidywany termin dostawy do paczkomatu, ocenę sprzedawcy oraz informację o możliwości zwrotu.
- *Zadanie 5:* Dodaj produkt do koszyka w liczbie 1 sztuki. Przejdź do koszyka. W koszyku wybierz dostawę do paczkomatu InPost oraz metodę płatności BLIK. Zatrzymaj się na ekranie poprzedzającym ostateczne potwierdzenie zamówienia.
- *Zadanie 6:* Cofnij się do wyników wyszukiwania i usuń filtr dotyczący ceny. Następnie sprawdź, czy po jego usunięciu jesteś w stanie sprawnie wrócić do wcześniej przeglądanej oferty.

*Sposób analizy i porównywania wyników:*
- *Dane ilościowe:* Zostaną zestawione w zbiorczej tabeli, co pozwoli łatwo porównać czasy wykonania oraz SEQ pomiędzy wszystkimi 6-8 użytkownikami, identyfikując najsłabsze punkty serwisu.
- *Dane jakościowe (kategoryzacja):* Obserwacje i zgłoszenia od użytkowników zostaną przeniesione do arkusza kalkulacyjnego (np. Excel) z ustalonymi kolumnami: *Etap (np. Koszyk)*, *Kategoria problemu (np. Etykieta przycisku / Układ strony)*, *Opis zachowania*, *Priorytet (Krytyczny, Istotny, Drobny)*. Taka strukturyzacja i pogrupowanie problemów jakościowych pozwoli wyciągnąć syntetyczne i bardzo wartościowe wnioski, zamiast chaotycznego opisu uwag.

== Study Execution

Badanie zostało zrealizowane na grupie docelowej określonej w dokumencie jako okazjonalni kupujący. W procesie rekrutacji nie ograniczał nas twardy przedział wiekowy, lecz zachowania użytkowników – częstotliwość korzystania z platformy Allegro (lub innych serwisów e-commerce) oraz ogólny poziom biegłości w obsłudze komputera. Zależało nam na przetestowaniu interfejsu na osobach, które nie działają "na pamięć" i nie mają wypracowanych silnych nawyków w poruszaniu się po serwisie.

Do tej pory udało się zrealizować i poddać analizie sesje z ośmioma osobami:

- *Uczestnik 1 (P1):* Mężczyzna, 59 lat. Słabo posługuje się komputerem, jednak w przeszłości dosyć często dokonywał zakupów na Allegro.
- *Uczestnik 2 (P2):* Kobieta, 56 lat. Sprawnie posługuje się komputerem i regularnie robi zakupy na różnych stronach internetowych, jednak z platformy Allegro nie korzystała od kilku lat.
- *Uczestnik 3 (P3):* Kobieta, 54 lat. Kupuje okazjonalnie, woli tradycyjne sklepy stacjonarne, ale używa komputera w codziennej pracy, więc sprawnie porusza się po interfejsach.
- *Uczestnik 4 (P4):* Mężczyzna, 55 lat. Korzysta z internetu głównie do czytania wiadomości lokalnych. Bardzo rzadko kupuje online i podczas badania potrzebowała więcej czasu na odnalezienie interaktywnych elementów.
- *Uczestnik 5 (P5):* Kobieta, 22 lata. Na co dzień używa komputera, pracuje jako informatyk.
- *Uczestnik 6 (P6):* Kobieta, 50 lat. W przeszłości była informatykiem i często używa komputera, jednak w swoim działaniu wykonuje zadania bardzo powoli i dokładnie.
- *Uczestnik 7 (P7):* Kobieta, około 20 lat. Doświadczona użytkowniczka Allegro, wcześniej korzystała z serwisu i dokonywała zakupów.
- *Uczestnik 8 (P8):* Kobieta, około 50 lat. Bardzo słabo doświadczona z Allegro i o niskich umiejętnościach technicznych.

== Study Results

Poniżej zestawiono zebrane dane ilościowe oraz wybrane obserwacje jakościowe z przeprowadzonych sesji badawczych.

*Tabela 1. Wyniki szczegółowe dla poszczególnych pytań badawczych (Q1-Q5)*
#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: center + horizon,
    [*ID*], [*Q1 Czas* \ (do wyszukiwania)], [*Q2 Czas* \ (filtry -> oferta)], [*Q2 Błędy* \ (niepoprawne filtry)], [*Q3 Popr. odp.* \ (informacje)], [*Q4 Czas* \ (koszyk)], [*Q5 Śr. ocena* \ (Ankieta 1-5)],
    [P1], [0:19], [0:32], [1], [4/4], [0:42], [4.67],
    [P2], [0:11], [0:14], [1], [4/4], [0:45], [4.33],
    [P3], [0:15], [0:24], [0], [4/4], [1:29], [4.00],
    [P4], [0:26], [0:42], [2], [3/4], [1:15], [3.33],
    [P5], [0:15], [0:20], [0], [4/4], [0:40], [3.67],
    [P6], [0:41], [0:39], [1], [4/4], [0:48], [4.33],
    [P7], [0:11], [0:18], [0], [4/4], [0:44], [4.33],
    [P8], [0:20], [0:28], [1], [4/4], [1:12], [4.33],
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
    [P5], [Sukces], [Sukces], [Sukces],
    [P6], [Sukces], [Sukces częściowy], [Sukces],
    [P7], [Sukces], [Sukces], [Sukces],
    [P8], [Sukces], [Sukces], [Sukces],
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
    [P5], [12:13], [4], [2], [1],
    [P6], [22:21], [8], [6], [3],
    [P7], [13:00], [2], [1], [0],
    [P8], [18:01], [3], [0], [0],
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
    [P5], [0:20], [1:41], [1:30], [2:50], [1:09], [1:17],
    [P6], [0:40], [3:13], [2:20], [5:58], [1:34], [3:03],
    [P7], [0:35], [2:20], [2:35], [3:35], [1:42], [2:13],
    [P8], [0:55], [3:50], [3:35], [4:55], [2:35], [2:11],
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
    [P5], [7], [5], [7], [5], [6], [6], [4], [5], [2],
    [P6], [7], [6], [7], [6], [7], [6], [4], [5], [4],
    [P7], [7], [5], [6], [7], [7], [6], [4], [5], [4],
    [P8], [7], [4], [6], [6], [7], [6], [4], [4], [5],
  ),
  caption: [Wyniki ankiet w skali Likerta i SEQ],
)

#pagebreak()
*Tabela 6. Kluczowe problemy jakościowe*
#text(size: 9pt)[
  #set par(justify: false)
  #table(
    columns: (0.8cm, 2.5cm, 3.1cm, 9.5cm),
    inset: 4pt,
    align: left + horizon,
    [*ID*], [*Etap*], [*Typ problemu*], [*Opis zgłoszenia / Obserwacja*],
    [P1], [Lista / Sortowanie], [Widoczność], [Czcionka napisu "sortowanie" jest bardzo mała i w szarym kolorze, który zlewa się z tłem.],
    [P1, P2], [Filtry], [Mylący interfejs], [Szukając opcji Allegro Smart użytkownicy omyłkowo chcieli kliknąć w mocno wyeksponowany napis "Okazje! Smart".],
    [P1], [Strona oferty], [Architektura inf.], [Użytkownik miał duże trudności ze znalezieniem informacji o sprzedawcy i jego ocenie.],
    [P2], [Filtry], [Intuicyjność], [Filtry ceny okazały się nieintuicyjne - docelowy przedział cenowy jest ukryty pod predefiniowanymi opcjami typu "mniej niż 75 zł".],
    [P3], [Koszyk], [Widoczność], [Przycisk zmiany metody płatności z domyślnej na BLIK był początkowo niezauważony, przez co użytkownik zawahał się przed zatwierdzeniem.],
    [P4], [Strona główna], [Nawigacja], [Użytkownik na początku pomylił duży banner reklamowy z wynikami wyszukiwania, co spowodowało błąd nawigacyjny i powrót wstecz.],
    [P5, P6], [Strona oferty], [Czytelność], [Ocena sprzedawcy jest niejasno pokazana na stronie oferty, co utrudnia szybką weryfikację zaufania.],
    [P5, P6], [Strona oferty], [Czytelność], [Koszt dostawy jest niejasno podany – wyświetla się jedynie jako "od X zł".],
    [P7], [Wyszukiwanie], [Błąd etykiety / Mylący interfejs], [Zamiast kliknąć w pasek wyszukiwania, użytkowniczka kliknęła ikonę "zamów w jednej przesyłce". Szybko zamknęła okno i poprawnie kliknęła pasek wyszukiwania.],
    [P7], [Filtry], [Układ informacji], [Użytkowniczka stwierdziła "za dużo tych opcji jest", wyraźnie okazując frustrację.],
    [P8], [Filtry], [Układ informacji], [Użytkownik nie wiedział, czy ma zaznaczyć filtr "bezprzewodowa", czy "wireless".],
    [P8], [Strona oferty], [Układ informacji], [Mały rozmiar czcionki sprawił, że użytkownik musiał przerwać zadanie i pójść po okulary.],
    [P8], [Dodanie produktu do koszyka], [Nawigacja / Intuicyjność], [Użytkownik był zdezorientowany, gdy po kliknięciu "Dodaj do koszyka" pojawił się popup z innymi ofertami od sprzedawcy. Głośno zastanawiał się, czy przedmiot został już dodany do koszyka.],
  )
]
#text(size: 9pt, style: "italic")[Zgłoszone i zaobserwowane problemy jakościowe z podziałem na etapy]

= Conclusions and Implications of the Study

Poniższe wnioski odnoszą się bezpośrednio do celu badania, czyli oceny skuteczności, efektywności, zrozumiałości nawigacji oraz satysfakcji okazjonalnych kupujących podczas wyszukiwania produktu, korzystania z filtrów, analizy oferty i przechodzenia przez koszyk.

Przeprowadzone badanie pokazało, że ogólny proces zakupowy w serwisie Allegro jest możliwy do wykonania przez okazjonalnych kupujących, ale jego sprawność silnie zależy od doświadczenia użytkownika oraz od etapu procesu. Wszyscy uczestnicy byli w stanie rozpocząć wyszukiwanie produktu, a większość poprawnie ukończyła także filtrowanie, analizę oferty i przejście przez koszyk. Nie oznacza to jednak pełnej intuicyjności interfejsu: część zadań została wykonana dopiero po zawahaniach, błędnych kliknięciach lub dłuższym błądzeniu po stronie.

Najlepiej ocenionym i najmniej problematycznym etapem było rozpoczęcie wyszukiwania. Wskaźnik sukcesu dla Q1 wyniósł 100%, a czasy wykonania pierwszego zadania były krótkie w porównaniu z pozostałymi etapami. Oznacza to, że główna wyszukiwarka jest wystarczająco widoczna i zrozumiała nawet dla osób, które nie korzystają z Allegro regularnie. Pojedyncze błędy, takie jak kliknięcie w element promocyjny zamiast w obszar wyszukiwania, wskazują jednak, że ekspozycja reklam i dodatkowych modułów na stronie głównej może czasem konkurować z główną ścieżką zadania.

Największym źródłem trudności okazały się filtry i sortowanie wyników. W zadaniach 2 i 3 pojawiały się sukcesy częściowe, błędnie użyte filtry oraz werbalizowana frustracja związana z dużą liczbą opcji. Szczególnie problematyczne były: nieintuicyjne ustawianie przedziału cenowego, mylące oznaczenia związane z Allegro Smart oraz niejednoznaczne warianty filtrów technicznych, np. rozróżnienie pomiędzy "bezprzewodowa" i "wireless". W praktyce oznacza to, że mechanizm filtrów spełnia swoją funkcję, ale wymaga od użytkownika zbyt dużego wysiłku poznawczego.

Strona oferty również wymaga poprawy pod kątem czytelności i hierarchii informacji. Uczestnicy potrafili najczęściej wskazać wymagane dane, ale obserwacje jakościowe pokazują, że znalezienie oceny sprzedawcy, kosztu dostawy i warunków dostawy nie było wystarczająco szybkie. Problemem jest nie tylko obecność informacji, ale sposób jej zaprezentowania: koszt dostawy opisany jako "od X zł" nie daje użytkownikowi natychmiastowej pewności, a ocena sprzedawcy nie jest wystarczająco wyeksponowana w kontekście decyzji zakupowej. Dla okazjonalnych kupujących są to informacje krytyczne, ponieważ służą ocenie bezpieczeństwa i opłacalności zakupu.

Proces koszyka został ukończony przez większość uczestników, jednak także tutaj wystąpiły problemy z widocznością i poczuciem kontroli. Część użytkowników miała trudność ze zmianą domyślnej metody płatności na BLIK, a popup po dodaniu produktu do koszyka powodował niepewność, czy produkt rzeczywiście został dodany. Ten etap nie blokował zakupu, ale powodował zawahania i mógł obniżać zaufanie do procesu. Najniższe oceny w ankiecie podsumowującej dotyczyły właśnie sprawności dodawania produktu do koszyka i wyboru opcji zakupu.

Z punktu widzenia Q6 najważniejszym wnioskiem jest to, że problemy użyteczności nie mają charakteru pojedynczego krytycznego błędu, lecz kumulują się w czasie. Użytkownicy bardziej doświadczeni przechodzili przez proces szybciej i z mniejszą liczbą zawahań, natomiast osoby mniej pewne technicznie potrzebowały znacznie więcej czasu, częściej wykonywały błędne kliknięcia i gorzej oceniały czytelność interfejsu. Najdłuższe sesje oraz największa liczba błędów pojawiły się u uczestników, którzy działali ostrożnie lub mieli mniejsze doświadczenie z Allegro.

Na podstawie wyników badania rekomendujemy następujące usprawnienia:

- *Uproszczenie i lepsze pogrupowanie filtrów:* najczęściej używane filtry powinny być bardziej widoczne, a opcje techniczne powinny mieć krótkie objaśnienia lub bardziej zrozumiałe etykiety. Szczególnie warto poprawić filtr ceny, aby użytkownik od razu widział możliwość wpisania własnego przedziału.
- *Ograniczenie konkurencji wizualnej na stronie głównej i liście wyników:* elementy promocyjne nie powinny wyglądać jak główna ścieżka zadania ani odciągać uwagi od wyszukiwarki, filtrów i sortowania.
- *Wyraźniejsze pokazanie kluczowych informacji na stronie oferty:* cena produktu, całkowity koszt dostawy, przewidywany termin dostawy, ocena sprzedawcy i warunki zwrotu powinny być łatwe do znalezienia bez długiego skanowania strony.
- *Poprawa komunikatu po dodaniu produktu do koszyka:* system powinien jednoznacznie potwierdzać, że produkt został dodany, oraz wyraźnie oddzielać tę informację od dodatkowych rekomendacji lub innych ofert sprzedawcy.
- *Zwiększenie widoczności zmiany metody płatności i dostawy w koszyku:* domyślne ustawienia powinny być czytelne, ale użytkownik musi łatwo zauważyć, gdzie może je zmienić.
- *Poprawa dostępności wizualnej:* rozmiar i kontrast mniej widocznych etykiet, takich jak sortowanie, informacje o dostawie czy dane sprzedawcy, powinny zostać zwiększone, ponieważ mały tekst był realną barierą dla części uczestników.

Podsumowując, Allegro jako system umożliwia skuteczne wykonanie badanego procesu zakupowego, ale jego użyteczność dla okazjonalnych kupujących można poprawić przez zmniejszenie obciążenia poznawczego, lepszą hierarchię informacji i bardziej jednoznaczne komunikaty w momentach decyzyjnych. Największy potencjał poprawy dotyczy filtrów, strony oferty oraz koszyka, ponieważ właśnie tam użytkownicy najczęściej tracili czas, pewność działania i poczucie kontroli.

= Lessons Learned

Przeprowadzenie pełnego badania z ośmioma uczestnikami pokazało nam, że test użyteczności wymaga nie tylko dobrze dobranego scenariusza, ale także bardzo konsekwentnego sposobu moderowania, mierzenia i interpretowania zachowań użytkowników. Najważniejszą lekcją było to, że problemy interfejsu często nie ujawniają się jako jedno duże niepowodzenie, lecz jako seria krótkich zawahań, niepewnych kliknięć i wypowiadanych komentarzy. Dopiero zestawienie nagrań, metryk czasowych, wyników SEQ i obserwacji jakościowych pozwoliło zobaczyć, które problemy faktycznie powtarzają się u wielu osób.

*Co zadziałało dobrze:*

- *Wspólny scenariusz oparty na jednym produkcie:* Użycie tego samego produktu, tych samych filtrów i tych samych wymagań dostawy/płatności ograniczyło przypadkowość wyników. Różnice między uczestnikami wynikały głównie ze sposobu korzystania z interfejsu, a nie z innych celów zakupowych.
- *Połączenie danych ilościowych i jakościowych:* Same czasy wykonania zadań nie wystarczały do oceny problemów. Dopiero komentarze użytkowników wyjaśniały, dlaczego określony etap trwał dłużej, np. czy przyczyną był ukryty filtr ceny, mało widoczna ocena sprzedawcy, czy niepewność po dodaniu produktu do koszyka.

*Czego nauczyliśmy się podczas badania:*

- *Moderator musi świadomie ograniczać interwencje:* Najtrudniejsze było powstrzymanie się od pomagania uczestnikowi, szczególnie gdy problem wydawał się prosty z perspektywy badacza. Zrozumieliśmy, że zbyt szybka podpowiedź usuwa dokładnie ten moment, który powinien zostać zaobserwowany.
- *Protokół głośnego myślenia wymaga aktywnego podtrzymywania:* Wielu uczestników naturalnie przechodziło do pracy w ciszy. Neutralne pytania w rodzaju "Czego teraz szukasz?" lub "Co myślisz o tym ekranie?" były potrzebne, ale musiały być zadawane tak, aby nie sugerować rozwiązania.
- *Precyzja instrukcji wpływa na jakość danych:* Jeżeli zadanie pozostawiało zbyt dużą przestrzeń interpretacji, część czasu była poświęcana na zrozumienie polecenia, a nie na pracę z interfejsem. W kolejnych badaniach należy pilnować, aby każde zadanie miało jasny punkt startowy, kryterium zakończenia i jednoznaczną listę wymaganych parametrów.
- *Różnice kompetencji technicznych silnie wpływają na przebieg sesji:* Nawet w jednej grupie "okazjonalnych kupujących" pojawiły się duże różnice między osobami sprawnie używającymi komputera a osobami mniej pewnymi technicznie. W analizie trzeba było oddzielać problemy wynikające z samego interfejsu od wolniejszego tempa pracy uczestnika.
- *Małe problemy wizualne mogą mieć duży wpływ praktyczny:* Niewielki kontrast, mała czcionka, niejednoznaczna etykieta lub słabo widoczny przycisk nie zawsze blokowały wykonanie zadania, ale zwiększały czas, liczbę zawahań i poczucie niepewności. Było to szczególnie widoczne przy sortowaniu, ocenie sprzedawcy, kosztach dostawy i zmianie metody płatności.

*Co zrobilibyśmy inaczej w kolejnej iteracji:*

- *Przeprowadzilibyśmy pilotaż scenariusza przed właściwymi sesjami:* Jedna próbna sesja pozwoliłaby wcześniej wykryć nieprecyzyjne sformułowania zadań i dopracować sposób mierzenia czasu.
- *Ujednolicilibyśmy arkusz obserwacji jeszcze przed badaniem:* Kategorie takie jak zawahanie, błędne kliknięcie, błąd nawigacyjny i sukces częściowy zostały zdefiniowane, ale podczas kolejnej iteracji warto przygotować gotowy formularz do zapisu obserwacji w trakcie sesji.
- *Dodaliśmy więcej pytań pogłębiających po najtrudniejszych etapach:* Szczególnie po filtrach, stronie oferty i koszyku warto krótko zapytać użytkownika, co było niejasne i jakiej informacji szukał. Pomogłoby to dokładniej odróżnić problem etykiety od problemu układu strony.
- *Zadbaliśmy o bardziej kontrolowane warunki techniczne:* Stały rozmiar ekranu, poziom zoomu przeglądarki i podobna konfiguracja konta ograniczyłyby wpływ czynników zewnętrznych na wyniki, zwłaszcza przy ocenie czytelności tekstu i widoczności elementów.

Najważniejszy wniosek metodyczny jest taki, że użyteczność należy analizować jako połączenie skuteczności, efektywności i poczucia pewności użytkownika. W naszym badaniu większość zadań kończyła się sukcesem, ale sukces nie zawsze oznaczał płynne i intuicyjne doświadczenie. Dlatego w kolejnych badaniach nadal warto łączyć pomiar czasu i sukcesu z obserwacją jakościową, ponieważ dopiero oba typy danych pokazują pełny obraz problemów.
