# Wytlumaczenie Task 2 - Maciej Żuralski

## Krotka wersja do powiedzenia

Badalismy dostepnosc desktopowej wersji Allegro w przegladarce Chrome. To nie byl klasyczny test uzytecznosci z uczestnikami, tylko audyt ekspercki dostepnosci oparty o wybrane kryteria WCAG 2.1 AA. Sprawdzalismy te sama sciezke zakupowa co w Task 1: wyszukanie myszy komputerowej, ustawienie filtrow, wejscie w oferte, dodanie produktu do koszyka, wybor dostawy do paczkomatu InPost i metody platnosci BLIK.

Jako Maciej Żuralski bylem jednym z czterech audytorow. W tabeli wynikow odpowiada mi kolumna `M`. Moja rola polegala na niezaleznej ocenie tej samej sciezki wedlug checklisty, a potem na porownaniu wynikow z ocenami Adriana, Juliusza i Sebastiana. Po rozbieznosciach wspolnie ustalalismy, czy dany problem jest rzeczywista bariera, czy wynika np. z innej sesji Allegro, popupu, reklamy albo roznej interpretacji czytnika ekranu.

Najwazniejszy wniosek: Allegro pozwala przejsc glowne kroki zakupowe, ale w badanej sciezce znalezlismy bariery dostepnosci. Najistotniejsze dotyczyly: pulapek klawiaturowych w popupach/galerii, dynamicznych filtrow bez jasnego komunikatu dla czytnika ekranu, problemow z opisami obrazow i hierarchia naglowkow oraz niedostatecznego informowania o linkach otwieranych w nowej karcie.

## Co jest w folderze Task2

- `Task2.typ` - glowny raport Task 2. Zawiera analize Allegro, grupy uzytkownikow z deficytami, plan badania, wykonanie badania, wyniki, wnioski i lessons learned.
- `ResearchResults.typ` - osobny plik z tabela wynikow audytu. To z niego wynikaja oceny `P`, `N` i `ND` dla czterech audytorow.
- `generate_graphs.py` - skrypt generujacy wykresy z danych z tabeli.
- `chart_answers.png` - wykres liczby ocen pozytywnych, negatywnych i nie dotyczy.
- `chart_consistency.png` - wykres pokazujacy, ile pytan mialo zgodne oceny audytorow, a ile bylo spornych.
- `Project_Task2_template.typ` i `Project_Task2_template.pdf` - szablon od prowadzacego, czyli punkt odniesienia dla struktury raportu.

## Czy dokument zgadza sie z Task 1

Tak, glowny zakres jest spojny:

- Task 1 byl o uzytecznosci Allegro dla okazjonalnych kupujacych.
- Task 2 jest o dostepnosci Allegro dla osob z deficytami wzrokowymi, motorycznymi i poznawczymi.
- W obu taskach analizowana jest desktopowa wersja Allegro w Chrome.
- W obu taskach uzyta jest podobna sciezka: wyszukanie produktu, filtry, oferta, koszyk, InPost, BLIK.
- Task 2 sensownie nawiazuje do Task 1, bo sprawdza, czy problemy z filtrami, oferta i koszykiem sa tez barierami dla osob korzystajacych np. z klawiatury, powiekszenia albo czytnika ekranu.

## Co zostalo sprawdzone pod katem halucynacji

Nie widac duzej halucynacji typu zmiana aplikacji, inna grupa, inny produkt albo inny proces niz w Task 1. Dokument jest ogolnie zgodny z templatka prowadzacego.

Rzeczy, na ktore trzeba uwazac przy odpowiedzi ustnej:

- Nie mowic, ze to reprezentatywne badanie osob z niepelnosprawnosciami. To byl audyt ekspercki wykonany przez czterech badaczy.
- Nie mowic, ze Allegro jest w pelni dostepne. Bezpieczniej: "w badanej sciezce glowne kroki byly wykonalne, ale znalezlismy bariery".
- Nie mowic, ze wyniki sa statystycznie reprezentatywne. To sa liczby z checklisty, nie analiza statystyczna populacji.
- Problemy typu popupy, reklamy i personalizacja Allegro moga byc zalezne od sesji, dlatego czesc wynikow byla konfliktowa.
- Narzedzia typu WAVE, Axe i NVDA byly wsparciem audytu, ale automatyczne narzedzia nie wykrywaja wszystkich problemow dostepnosci.

W `Task2.typ` poprawione zostaly niespojnosci liczbowe i nazwa kryterium dotyczacego pulapki klawiaturowej. Poprawne podsumowanie danych to:

- 16 pytan kontrolnych,
- 4 audytorow,
- 64 oceny czastkowe,
- 43 oceny pozytywne,
- 19 ocen negatywnych,
- 2 oceny `ND`,
- 8 pytan ocenionych jednomyslnie pozytywnie,
- 1 pytanie ocenione jednomyslnie negatywnie,
- 7 pytan z rozbieznosciami miedzy audytorami.

## Struktura raportu wedlug templatki

### 1. Analysis of the software

Opisujemy Allegro jako marketplace e-commerce. Klientami biznesowymi sa glownie sprzedawcy placacy prowizje i oplaty za promowanie ofert, a takze kupujacy korzystajacy z uslug typu Smart. Uzytkownikami w badanej sciezce sa kupujacy korzystajacy z portalu, zwlaszcza osoby z potrzebami dostepnosciowymi.

Najwazniejsze funkcje badane w raporcie:

- wyszukiwarka,
- filtry i sortowanie,
- lista wynikow,
- strona oferty,
- koszyk,
- dostawa,
- platnosc.

Najwazniejsze wymagania niefunkcjonalne:

- zgodnosc z WCAG 2.1 AA,
- czytelnosc,
- kontrast,
- obsluga klawiatura,
- brak pulapek klawiaturowych,
- poprawna semantyka dla czytnikow ekranu,
- czytelnosc przy powiekszeniu 200%.

### 2. User analysis

W raporcie sa trzy glowne grupy:

- osoby z niepelnosprawnoscia wzroku: potrzebuja tekstow alternatywnych, dobrego kontrastu, logicznych naglowkow i wsparcia czytnika ekranu;
- osoby z ograniczeniami motorycznymi: potrzebuja pelnej obslugi klawiatura, widocznego fokusu i braku pulapek klawiaturowych;
- osoby z trudnosciami poznawczymi, np. dysleksja lub problemy z koncentracja: potrzebuja prostych komunikatow, przewidywalnej nawigacji i mniejszego chaosu wizualnego.

### 3. Accessibility study

Badanie mialo charakter mieszany, ale nie w sensie klasycznego eksperymentu z uczestnikami. Jak to wyjasnic:

"Jakosciowe bylo opisanie konkretnych barier i rekomendacji, a ilosciowe bylo policzenie ocen z checklisty: pozytywne, negatywne, nie dotyczy oraz zgodnosc audytorow."

Metody:

- checklist WCAG 2.1 AA,
- test klawiatura,
- sprawdzenie widocznosci fokusu,
- sprawdzenie powiekszenia do 200%,
- wsparcie narzedziami WAVE i Axe DevTools,
- sprawdzenie dzialania z czytnikiem ekranu,
- porownanie ocen czterech audytorow.

### 4. Study execution

Proba w tym tasku to nie byli uzytkownicy zewnetrzni, tylko czteroosobowy zespol audytorow:

- Adrian,
- Juliusz,
- Maciej,
- Sebastian.

Kazdy ocenial te sama sciezke wedlug 16 pytan kontrolnych. Potem oceny zostaly zestawione. Jesli wszyscy dali ten sam wynik, pytanie bylo bezsporne. Jesli byly roznice, zespol ponownie przechodzil dany fragment i ustalal interpretacje.

Co poszlo gorzej:

- dynamiczne reklamy i popupy Allegro powodowaly rozne wyniki u roznych osob;
- rozna biegłość w NVDA mogla wplynac na interpretacje elementow;
- strona Allegro ma bardzo gesty DOM, przez co manualna analiza jest trudna;
- Allegro jest personalizowane, wiec nie kazdy widzi dokladnie ten sam ekran.

### 5. Study results

Najwazniejsze wyniki:

- ogolnie duzo elementow dziala poprawnie: klawiatura, widoczny fokus, kontrast w badanej sciezce, brak automatycznego dzwieku;
- najwiekszy jednoznaczny problem to brak ostrzezenia przed otwieraniem linkow w nowej karcie;
- sporne byly m.in. zlozone opisy grafik, naglowki, powiekszenie 200%, pulapki klawiaturowe i spojnosc nawigacji;
- glownymi problemami praktycznymi byly galerie/popupy, dynamiczne filtry, alt teksty, naglowki sprzedawcow i komunikaty bledow.

### 6. Conclusions and implications

Wnioski dla Allegro:

- ujednolicic galerie i modale, zeby zawsze dalo sie wyjsc klawiatura, np. przez `Esc`;
- dodac/naprawic komunikaty dla czytnikow ekranu przy dynamicznej zmianie filtrow, np. `aria-live`;
- wymuszac lepsze teksty alternatywne i semantyke w szablonach sprzedawcow;
- poprawic komunikaty walidacji w koszyku tak, zeby fokus trafial na blad;
- informowac uzytkownika, kiedy link otwiera nowa karte.

### 7. Lessons learned

Najwazniejsze lekcje:

- sama automatyczna analiza nie wystarcza;
- dostepnosc trzeba testowac manualnie, bo narzedzie nie oceni sensownosci alt tekstu albo logicznej kolejnosci fokusu;
- dynamiczne, personalizowane strony e-commerce sa trudne do audytu;
- na przyszlosc warto ujednolicic srodowisko testowe: ta sama rozdzielczosc, czysty profil Chrome, te same ustawienia konta, te same dodatki.

## Przykladowe pytania prowadzacego i odpowiedzi

### 1. Czym Task 2 rozni sie od Task 1?

Task 1 ocenial uzytecznosc Allegro dla okazjonalnych kupujacych, czyli czy zwykly uzytkownik rozumie wyszukiwarke, filtry, oferte i koszyk. Task 2 ocenia dostepnosc, czyli czy ta sama sciezka jest wykonalna dla osob z deficytami wzrokowymi, motorycznymi i poznawczymi, np. przy uzyciu klawiatury, powiekszenia albo czytnika ekranu.

### 2. Dlaczego wybraliscie Allegro?

Bo to popularny i rozbudowany serwis e-commerce, a proces zakupowy ma wiele elementow istotnych dla dostepnosci: wyszukiwarke, filtry, listy wynikow, obrazy, formularze, koszyk, popupy i platnosci. To daje dobry material do audytu WCAG.

### 3. Kto jest customer, a kto user?

Customer to podmiot generujacy przychod platformy, glownie sprzedawcy placacy prowizje i oplaty oraz czesciowo kupujacy z uslugami premium, np. Smart. User w naszym badaniu to osoba korzystajaca z serwisu, czyli kupujacy przechodzacy przez proces wyszukiwania i koszyka.

### 4. Jaka byla proba badawcza?

W Task 2 proba to czterech audytorow z zespolu, a nie zewnetrzni uczestnicy z niepelnosprawnosciami. Kazdy audytor ocenil 16 pytan kontrolnych, wiec lacznie zebralismy 64 oceny czastkowe.

### 5. Czy to badanie jest jakosciowe czy ilosciowe?

Mieszane. Jakosciowe, bo opisujemy konkretne bariery, ich wplyw i rekomendacje. Ilosciowe, bo liczymy oceny z checklisty: ile bylo `P`, `N`, `ND` oraz ile pytan bylo zgodnych albo spornych miedzy audytorami.

### 6. Dlaczego uzywaliscie WCAG 2.1 AA?

WCAG 2.1 AA to powszechnie stosowany standard oceny dostepnosci stron internetowych. Poziom AA jest praktycznym poziomem docelowym dla publicznych i komercyjnych interfejsow, bo laczy wymagania podstawowe z realnymi oczekiwaniami wobec stron.

### 7. Dlaczego nie wystarczy Axe albo WAVE?

Automatyczne narzedzia dobrze wykrywaja czesc problemow technicznych, np. kontrast albo brak etykiety. Nie oceniaja jednak wszystkiego: czy alt tekst ma sens, czy kolejnosc fokusu jest logiczna, czy komunikat bledu jest zrozumialy albo czy uzytkownik rzeczywiscie rozumie dynamiczna zmiane wynikow.

### 8. Co konkretnie robil Maciej?

Jako Maciej Żuralski wykonywalem niezalezna inspekcje tej samej sciezki i wpisywalem wyniki do kolumny `M`. Sprawdzalem m.in. dostepnosc elementow z klawiatury, widocznosc fokusu, problemy z naglowkami, tekstami alternatywnymi, popupami i zachowaniem interfejsu przy dynamicznych zmianach.

### 9. Jakie byly najwazniejsze wyniki liczbowe?

Bylo 16 pytan i 4 audytorow, czyli 64 oceny. Z tego 43 byly pozytywne, 19 negatywne i 2 nie dotyczy. Osiem pytan bylo jednomyslnie pozytywnych, jedno jednomyslnie negatywne, a siedem mialo rozbieznosci miedzy audytorami.

### 10. Jaki byl najwiekszy problem dostepnosci?

Najbardziej krytyczne praktycznie byly pulapki klawiaturowe w popupach lub galerii, bo moga zatrzymac osobe korzystajaca tylko z klawiatury. Bardzo istotne byly tez dynamiczne filtry, bo czytnik ekranu nie zawsze jasno informuje, ze lista wynikow sie zmienila.

### 11. Czy Allegro jest niedostepne?

Nie postawilbym tak mocnej tezy. W badanej sciezce glowne zadania byly mozliwe do wykonania, ale wykryto bariery, ktore moga utrudnic albo czasem zablokowac korzystanie osobom z okreslonymi potrzebami. Czyli: ogolnie dziala, ale wymaga poprawek.

### 12. Czy wyniki sa reprezentatywne statystycznie?

Nie. To nie jest badanie statystyczne populacji. To audyt ekspercki z policzeniem wynikow checklisty. Liczby pomagaja uporzadkowac wyniki, ale nie pozwalaja powiedziec, jaki procent wszystkich uzytkownikow Allegro ma dany problem.

### 13. Dlaczego wyniki audytorow sie roznily?

Allegro jest dynamiczne i personalizowane. Rozne osoby mogly widziec inne popupy, reklamy albo modul ofert. Do tego dochodzi rozny poziom wprawy w obsludze czytnika ekranu i rozna interpretacja niektorych kryteriow WCAG.

### 14. Jak potraktowaliscie rozbieznosci?

Najpierw kazdy ocenial niezaleznie. Potem porownalismy wyniki. Jesli pojawila sie rozbieznosc, ponownie sprawdzalismy dany fragment i omawialismy, czy problem jest rzeczywisty, zalezy od sesji, czy wynika z interpretacji kryterium.

### 15. Czemu nie badaliscie prawdziwych osob niewidomych albo z niepelnosprawnoscia ruchowa?

W tym zadaniu celem byl audyt dostepnosci wybranej aplikacji, a nie pelne badanie z rekrutacja osob z niepelnosprawnosciami. Uzycie realnych uczestnikow byloby lepsze w kolejnym etapie, ale wymagaloby wiecej czasu, zgody, rekrutacji i dokladniejszego scenariusza.

### 16. Co oznacza `P`, `N` i `ND`?

`P` oznacza ocene pozytywna, czyli kryterium bylo spelnione w badanym zakresie. `N` oznacza problem lub niezgodnosc. `ND` oznacza, ze dany element nie wystapil w ocenianym widoku albo nie dalo sie go sensownie ocenic w tej sciezce.

### 17. Dlaczego brak informacji o nowej karcie to problem?

Dla osoby widzacej zmiana karty jest zwykle zauwazalna. Dla osoby korzystajacej z czytnika ekranu albo klawiatury nagle otwarcie nowego kontekstu moze byc dezorientujace, jesli link nie informuje o tym przed aktywacja.

### 18. Co oznacza pulapka klawiaturowa?

To sytuacja, w ktorej uzytkownik wchodzi fokusem w jakis element, np. modal albo galerie zdjec, ale nie moze sie z niego wydostac sama klawiatura. To jest szczegolnie powazne dla osob, ktore nie uzywaja myszy.

### 19. Co byscie poprawili w Allegro jako pierwsze?

Najpierw poprawilbym elementy, ktore moga blokowac zadanie: modale i galerie pod katem wyjscia klawiatura. Potem dynamiczne filtry z komunikatami `aria-live`, a nastepnie alt teksty, naglowki i komunikaty bledow w koszyku.

### 20. Co byscie zrobili inaczej w kolejnym badaniu?

Ujednolicilibysmy srodowisko: ta sama przegladarka, czysty profil, taka sama rozdzielczosc, te same dodatki i ustawienia konta. Dodalbysmy tez prawdziwych uzytkownikow z konkretnymi potrzebami, zeby sprawdzic, czy problemy z audytu faktycznie wystepuja w praktyce.

## Bezpieczne zdania na obrone

- "To byl audyt ekspercki, nie certyfikacja dostepnosci Allegro."
- "Wnioski odnosza sie do badanej sciezki zakupowej, a nie do calego portalu."
- "Automatyczne narzedzia byly pomocnicze, finalna ocena wymagala testow manualnych."
- "Rozbieznosci wynikaly m.in. z dynamicznej natury Allegro i personalizacji widokow."
- "Najwazniejsze bariery dotyczyly klawiatury, dynamicznych zmian, tekstow alternatywnych i semantyki."
- "Task 2 rozszerza Task 1: najpierw sprawdzalismy uzytecznosc, potem dostepnosc tej samej sciezki."
