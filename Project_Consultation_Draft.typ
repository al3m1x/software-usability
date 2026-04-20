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
- *Klienci, użytkownicy* (customer != user): Użytkownikami są przede wszystkim kupujący oraz sprzedawcy. W tym badaniu skupiamy się na kupujących, ponieważ to oni wykonują analizowany proces wyszukiwania i zakupu. Klientami biznesowymi Allegro są głównie sprzedawcy płacący prowizje, opłaty za promowanie ofert i korzystanie z narzędzi sprzedażowych. Dodatkową grupą klientów są kupujący opłacający usługi premium, np. Allegro Smart.
- *Kontekst użycia:* Badanie dotyczy korzystania z serwisu internetowego Allegro w widoku desktopowym, w najnowszej dostępnej wersji przeglądarki Google Chrome, na komputerze lub laptopie, w warunkach domowych i przy typowym połączeniu internetowym. Zakładamy sytuację, w której użytkownik samodzielnie szuka produktu, porównuje kilka ofert i przechodzi do koszyka. Badanie nie obejmuje rzeczywistego opłacenia zamówienia.
- *Funkcjonalności:* Wyszukiwarka produktów, kategorie, filtry, sortowanie, rekomendacje, lista wyników, strona oferty, informacje o sprzedawcy, opinie, koszyk, wybór dostawy, wybór metody płatności, logowanie lub przejście przez proces jako użytkownik z istniejącym kontem.
- *Wymagania niefunkcjonalne:* Krótki czas odpowiedzi wyszukiwarki i filtrów, stabilność działania koszyka, bezpieczeństwo danych i transakcji, czytelność interfejsu, spójność nawigacji, responsywność układu oraz wysoka dostępność serwisu przy dużym obciążeniu.

= User Analysis

Badanie obejmuje kilka grup użytkowników, ponieważ użyteczność Allegro zależy od doświadczenia zakupowego, znajomości serwisu oraz celu wizyty.

- *Nowi użytkownicy:* Osoby, które nie korzystają regularnie z Allegro albo nie pamiętają procesu zakupowego. Mogą mieć problem ze zrozumieniem struktury strony, znaczenia filtrów, informacji o dostawie oraz wymagań logowania. Dla tej grupy szczególnie ważna jest nauczalność interfejsu i jasne prowadzenie przez kolejne kroki.
- *Okazjonalni kupujący:* Osoby korzystające z Allegro kilka razy w roku, zwykle wtedy, gdy szukają konkretnego produktu. Potrzebują sprawnej wyszukiwarki, zrozumiałych filtrów oraz łatwego porównania ceny, dostawy i wiarygodności sprzedawcy. To główna grupa docelowa badania.
- *Regularni kupujący:* Osoby dobrze znające Allegro, często korzystające z konta, historii zakupów i Allegro Smart. Dla tej grupy istotna jest efektywność, skrócenie liczby kroków oraz szybki dostęp do preferowanych metod dostawy i płatności.
- *Użytkownicy ostrożni cenowo:* Osoby porównujące wiele ofert przed zakupem, zwracające uwagę na cenę całkowitą, koszt dostawy, czas doręczenia, warunki zwrotu i opinie. Dla nich kluczowa jest przejrzystość informacji oraz brak ukrytych kosztów w późniejszych krokach procesu.

W badaniu największy nacisk zostanie położony na nowych i okazjonalnych kupujących, ponieważ ich zachowanie najlepiej ujawnia problemy z nawigacją, zrozumiałością filtrów, interpretacją informacji na stronie oferty i procesem koszyka.

= Usability Study

== Purpose and Scope of the Study

*Cel (Goal - GQM):* Analiza serwisu internetowego Allegro w widoku desktopowym, uruchamianego w najnowszej dostępnej wersji przeglądarki Google Chrome, pod kątem użyteczności, w celu oceny skuteczności, efektywności, zrozumiałości nawigacji oraz satysfakcji użytkownika, z punktu widzenia nowych i okazjonalnych kupujących, w kontekście domowego korzystania z serwisu na komputerze podczas wyszukiwania produktu, porównywania ofert, używania filtrów, zapoznawania się ze szczegółami oferty oraz przechodzenia przez koszyk do etapu poprzedzającego finalną płatność.

Badanie ma charakter mieszany. Część jakościowa obejmuje obserwację użytkowników, protokół głośnego myślenia i krótkie pytania po zadaniach. Część ilościowa obejmuje pomiar czasu, skuteczności, liczby błędów, liczby próśb o pomoc oraz ocenę satysfakcji po wykonaniu zadań.

Zakres badania obejmuje:
- stronę główną i rozpoczęcie wyszukiwania,
- listę wyników, sortowanie i filtry,
- stronę szczegółów oferty,
- porównanie ceny, dostawy, opinii i informacji o sprzedawcy,
- dodanie produktu do koszyka,
- wybór dostawy i płatności do momentu poprzedzającego realne opłacenie zamówienia.

Zakres nie obejmuje:
- oceny panelu sprzedawcy,
- reklamacji i zwrotów po zakupie,
- procesu publikowania ofert przez sprzedawców,
- rzeczywistego zakupu i przekazywania danych płatniczych.

*Pytania i metryki (Questions and Metrics):*

- *Q1: Czy użytkownicy rozumieją stronę główną i potrafią rozpocząć wyszukiwanie produktu bez dodatkowych instrukcji?* \
  *Metryki:* czas do rozpoczęcia pierwszego wyszukiwania; liczba błędnych kliknięć przed wpisaniem frazy; odsetek użytkowników, którzy samodzielnie znajdują wyszukiwarkę; ocena łatwości pierwszego kroku w skali SEQ 1-7.

- *Q2: Czy wyszukiwarka, sortowanie i filtry pomagają użytkownikom znaleźć ofertę zgodną z podanymi kryteriami?* \
  *Metryki:* wskaźnik sukcesu zadania znalezienia oferty spełniającej kryteria; czas od wpisania frazy do wyboru oferty; liczba niepoprawnie użytych lub cofniętych filtrów; liczba przypadków, w których użytkownik nie zauważa aktywnego filtra albo sposobu sortowania.

- *Q3: Czy użytkownicy potrafią poprawnie zinterpretować informacje na stronie oferty?* \
  *Metryki:* liczba poprawnych odpowiedzi na pytania o cenę całkowitą, termin dostawy, stan produktu, sprzedawcę i zwroty; czas znalezienia informacji o dostawie; liczba momentów zawahania przy porównywaniu informacji; liczba nieporozumień zgłoszonych w protokole głośnego myślenia.

- *Q4: Czy proces dodania produktu do koszyka i wyboru opcji dostawy oraz płatności jest zrozumiały?* \
  *Metryki:* wskaźnik ukończenia zadania do ekranu poprzedzającego płatność; czas przejścia przez koszyk; liczba błędów nawigacyjnych; liczba cofnięć do poprzedniego kroku; liczba przypadków użycia pomocy moderatora.

- *Q5: Jak użytkownicy oceniają ogólną użyteczność i komfort korzystania z Allegro po wykonaniu zadań?* \
  *Metryki:* wynik ankiety SUS; średnia ocena trudności zadań w skali SEQ 1-7; liczba zgłoszonych problemów jakościowych; deklarowana pewność użytkownika, że wykonał zadania poprawnie.

== Study Plan

*Wybrane metody:*

- *Moderowany test użyteczności z protokołem głośnego myślenia.* Metoda pozwala obserwować realne zachowania użytkowników podczas wykonywania zadań i jednocześnie zbierać komentarze wyjaśniające ich decyzje. Jest odpowiednia dla celu badania, ponieważ problemy w wyszukiwaniu, filtrowaniu i koszyku często wynikają nie tylko z samego wyniku zadania, ale też z niepewności, błędnej interpretacji etykiet albo niezauważonych elementów interfejsu.
- *Obserwacja ekranu i notatki moderatora.* Pozwala zebrać dane o czasie, błędach, zawahaniach, cofnięciach i miejscach, w których użytkownik potrzebuje pomocy. Dzięki temu pytania GQM mają przypisane konkretne metryki.
- *Krótka ankieta po zadaniach: SEQ i SUS.* SEQ zostanie użyte po każdym zadaniu do oceny jego trudności, a SUS po całej sesji do ogólnej oceny użyteczności. Metody ankietowe uzupełniają obserwację o porównywalne dane ilościowe.
- *Krótki wywiad końcowy.* Pozwoli zebrać subiektywne wrażenia, wskazać najbardziej problematyczne kroki i zapytać, co użytkownik zmieniłby w procesie.

*Planowana próba:*

Badanie zostanie przeprowadzone na grupie 6-8 osób:
- 3-4 nowych lub okazjonalnych kupujących,
- 2 regularnych kupujących,
- 1-2 osoby ostrożne cenowo, które przed zakupem porównują wiele ofert.

Uczestnicy powinni mieć podstawową umiejętność korzystania z przeglądarki internetowej. Nie wymagamy znajomości aktualnego interfejsu Allegro. W badaniu nie będą zbierane dane płatnicze ani wykonywane rzeczywiste zakupy.

*Środowisko badania:*

Sesje zostaną przeprowadzone na komputerze lub laptopie w najnowszej dostępnej wersji przeglądarki Google Chrome. Uczestnik będzie korzystał z serwisu internetowego Allegro w widoku desktopowym, w warunkach zbliżonych do domowego użycia. Moderator będzie mierzył czas, notował błędy i prosił uczestnika o komentowanie swoich działań. Jeśli uczestnik będzie używał własnego konta, badanie zostanie przerwane przed finalnym potwierdzeniem płatności.

*Przebieg pojedynczej sesji:*

- 5 minut - wprowadzenie, zgoda uczestnika, wyjaśnienie, że badany jest system, a nie użytkownik.
- 3 minuty - krótka ankieta wstępna o doświadczeniu z Allegro i zakupami online.
- 25-30 minut - wykonanie zadań badawczych z głośnym myśleniem.
- 5 minut - ankieta SUS i krótkie pytania końcowe.

*Scenariusz zadań:*

Wszystkie zadania dotyczą tego samego produktu: mysz bezprzewodowa *Logitech Wireless Mouse M185*, kolor szary, numer producenta *910-002235*. Uczestnik nie wybiera produktu według własnych preferencji, tylko ma znaleźć ofertę spełniającą podane kryteria.

- *Zadanie 1:* Na stronie głównej Allegro wyszukaj produkt wpisując frazę "Logitech M185". Przejdź do kategorii myszy komputerowe, jeśli Allegro pokaże wyniki z wielu kategorii.
- *Zadanie 2:* Zawęź wyniki za pomocą filtrów: producent Logitech, stan nowy, typ myszy bezprzewodowa, komunikacja bezprzewodowa / USB, kolor szary, cena od 40 zł do 90 zł.
- *Zadanie 3:* Dodaj kolejne ograniczenia: dostawa z Allegro Smart, dostawa do paczkomatu, sprzedawca z oceną co najmniej 98% pozytywnych opinii lub oznaczeniem Super Sprzedawca. Następnie posortuj wyniki według ceny z dostawą od najniższej.
- *Zadanie 4:* Otwórz pierwszą ofertę z listy wyników, która spełnia wszystkie kryteria. Na stronie oferty sprawdź i wskaż: pełną nazwę modelu, cenę produktu, koszt dostawy, przewidywany termin dostawy do paczkomatu, ocenę sprzedawcy oraz informację o możliwości zwrotu.
- *Zadanie 5:* Dodaj produkt do koszyka w liczbie 1 sztuki. W koszyku wybierz dostawę do paczkomatu InPost oraz metodę płatności BLIK. Zatrzymaj się na ekranie poprzedzającym ostateczne potwierdzenie i opłacenie zamówienia.
- *Zadanie 6:* Cofnij się do wyników wyszukiwania i usuń filtr ceny. Następnie sprawdź, czy po usunięciu filtra nadal można łatwo rozpoznać aktywne filtry oraz wrócić do wcześniej wybranej oferty.

*Rejestrowane dane:*

- czas wykonania każdego zadania,
- ukończenie zadania: sukces, sukces częściowy, niepowodzenie,
- liczba błędnych kliknięć, cofnięć i zmian strategii,
- liczba próśb o pomoc,
- komentarze użytkownika z protokołu głośnego myślenia,
- ocena SEQ po każdym zadaniu,
- wynik SUS po sesji,
- najważniejsze problemy jakościowe przypisane do etapów procesu.

*Sposób analizy wyników:*

Dane ilościowe zostaną zestawione w tabeli dla każdego zadania i pytania GQM. Dane jakościowe zostaną pogrupowane według etapów procesu: wyszukiwanie, filtry, strona oferty, koszyk i ogólna satysfakcja. Każdy problem zostanie opisany razem z jego możliwą konsekwencją dla użytkownika i przypisany do poziomu istotności: krytyczny, istotny albo drobny.
