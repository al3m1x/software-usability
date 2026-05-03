#set document(title: "Software Usability Project - Consultation Draft")
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
  #text(size: 16pt, weight: "bold")[Software Usability Project - Consultation Draft]
  #v(0.4em)
  #text(size: 12pt, style: "italic")[
    Report draft covering sections 1 through 3.2, inclusive.
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
- *Sukces częściowy:* Zadanie wykonane, ale po długim błądzeniu, licznych powrotach ("wstecz") lub po wskazówce moderatora.
- *Zawahnie:* Wyraźne wstrzymanie ruchu kursorem, poszukiwanie wzrokiem lub bezcelowe scrollowanie trwające powyżej 3 sekund.
- *Błędne kliknięcie:* Kliknięcie w element niebędący interaktywnym, rozwinięcie niewłaściwego menu lub kliknięcie w link wymuszające natychmiastowy powrót (przycisk "wstecz").
- *Zgłoszenie użytkownika (problem jakościowy):* Werbalnie wyrażona frustracja, uwaga (np. "nie rozumiem co to znaczy", "gdzie jest ten przycisk") wypowiedziana w ramach głośnego myślenia.

*Pytania i metryki (Questions and Metrics):*
- *Q1: Czy użytkownicy rozumieją stronę główną i potrafią rozpocząć wyszukiwanie produktu?* \
  *Metryki:* czas do rozpoczęcia pierwszego wyszukiwania; liczba błędnych kliknięć; odsetek użytkowników samodzielnie znajdujących wyszukiwarkę.
- *Q2: Czy wyszukiwarka i filtry pomagają znaleźć odpowiednią ofertę?* \
  *Metryki:* wskaźnik sukcesu; czas od wpisania frazy do wyboru oferty; liczba niepoprawnie użytych lub cofniętych filtrów.
- *Q3: Czy użytkownicy poprawnie interpretują stronę oferty?* \
  *Metryki:* liczba poprawnych odpowiedzi (cena, dostawa, zwroty); czas znalezienia informacji; liczba momentów zawahania.
- *Q4: Czy proces koszyka jest zrozumiały?* \
  *Metryki:* wskaźnik ukończenia zadania; czas przejścia koszyka; liczba błędów nawigacyjnych.
- *Q5: Jak użytkownicy oceniają ogólną użyteczność?* \
  *Metryki:* średnia ocena z 3 pytań krótkiej ankiety podsumowującej; średnia ocena w skali SEQ.

== Study Plan

*Wybrane metody i odtwarzalność badania:*

- *Moderowany test użyteczności z protokołem głośnego myślenia.* Pozwala obserwować zachowania i jednocześnie zbierać komentarze. 
- *Nagrywanie sesji.* Wszystkie sesje będą rejestrowane (obraz ekranu i dźwięk). Umożliwi to późniejszą *wspólną analizę przez cały zespół badawczy*. Dzięki temu wyeliminowane zostaną rozbieżności w ocenie i kategoryzacji – zespół wspólnie zdecyduje, czy dana akcja była zawahaniem, czy błędnym kliknięciem.
- *Ankiety (Treść narzędzi badawczych):*
  - *Ankieta wstępna (kwalifikacyjna):* "Jak często robisz zakupy w internecie?" (szukamy kupujących od kilku do kilkunastu razy w roku).
  - *SEQ (Single Ease Question):* Zadawane po każdym zadaniu: "W skali od 1 do 7, gdzie 1 to bardzo trudne, a 7 to bardzo łatwe, jak oceniasz trudność tego zadania?".
  - *Krótka ankieta podsumowująca:* Przeprowadzana na sam koniec sesji. Składa się z 3 kluczowych stwierdzeń, które użytkownik ocenia w skali Likerta (1 - Zdecydowanie się nie zgadzam, do 5 - Zdecydowanie się zgadzam):
    1. "Ogólne korzystanie z serwisu i poruszanie się po nim było dla mnie łatwe i intuicyjne."
    2. "Informacje prezentowane na stronie (filtry, parametry oferty, opcje dostawy) były czytelne i w pełni zrozumiałe."
    3. "Proces dodawania produktu do koszyka i wyboru opcji zakupu przebiegł sprawnie i bez poczucia frustracji."

*Planowana próba:*
Badanie zostanie przeprowadzone na grupie *6-8 osób należących wyłącznie do grupy docelowej "okazjonalnych kupujących"*. Zawężenie próby do jednej homogenicznej grupy pozwoli na spójne i miarodajne zestawienie oraz porównanie wyników między badanymi.

*Harmonogram całego projektu badawczego:*
1. *Faza 1 (Przygotowanie):* Skompletowanie scenariusza, konfiguracja narzędzi do nagrywania, rekrutacja 6-8 uczestników z grupy docelowej.
2. *Faza 2 (Sesje badawcze):* Przeprowadzenie pojedynczych spotkań (około 35-40 min każde).
3. *Faza 3 (Analiza nagrań):* Wspólne odtworzenie nagrań przez zespół, przypisanie metryk i uzupełnienie tabeli wyników.
4. *Faza 4 (Raportowanie):* Porównanie zebranych wyników i opracowanie rekomendacji w finalnym raporcie.

*Przebieg pojedynczej sesji badawczej (ok. 35-40 min):*
- 5 minut - wprowadzenie, zgoda na nagrywanie, wyjaśnienie, że badany jest system, a nie użytkownik.
- 3 minuty - ankieta wstępna kwalifikacyjna.
- 25 minut - wykonanie zadań badawczych z głośnym myśleniem (ankieta SEQ po każdym kroku).
- 5 minut - ankieta SUS i krótkie podsumowanie.

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