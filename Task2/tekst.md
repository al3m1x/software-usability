# Tekst do prezentacji - Task 2

Szacowany czas: 10-15 minut. Nie czytaj slajdów słowo w słowo. Slajdy mają być skrótem, a poniższy tekst jest tym, co warto powiedzieć ustnie.

## Slajd 1 - Audyt dostępności platformy Allegro

Na początku przedstawiam temat prezentacji: omawiamy Task 2, czyli audyt dostępności desktopowej wersji Allegro w przeglądarce Google Chrome. To nie jest klasyczny test użyteczności z uczestnikami, tylko ekspercka ocena dostępności wybranej ścieżki zakupowej.

Naszym celem było sprawdzenie, czy użytkownik z ograniczeniami wzrokowymi, motorycznymi albo poznawczymi może samodzielnie przejść przez proces: wyszukanie produktu, użycie filtrów, wejście w ofertę, dodanie produktu do koszyka i wybór dostawy oraz płatności. Punktem odniesienia były wybrane kryteria WCAG 2.1 na poziomie AA.

Warto od razu zaznaczyć, że mówimy o badanej ścieżce, a nie o całym Allegro. Nie certyfikowaliśmy całej platformy, tylko sprawdzaliśmy najważniejsze kroki procesu zakupowego.

## Slajd 2 - Punkt wyjścia

Badanym oprogramowaniem było Allegro, czyli duży serwis e-commerce typu marketplace. Skupiliśmy się na wersji desktopowej, ponieważ taki zakres był spójny z wcześniejszym etapem projektu i łatwiej było kontrolować środowisko testowe.

Task 2 jest naturalnym rozszerzeniem Task 1. W Task 1 patrzyliśmy na użyteczność Allegro dla okazjonalnych kupujących: czy rozumieją filtry, ofertę, koszyk i proces zakupu. W Task 2 sprawdziliśmy podobną ścieżkę, ale z innej perspektywy: czy te same elementy są dostępne dla osób, które nie mogą polegać wyłącznie na standardowym korzystaniu z myszy i wzroku.

Dlatego najważniejsze pytanie brzmiało nie tylko: "czy da się kupić produkt?", ale też: "czy da się to zrobić klawiaturą, z czytnikiem ekranu, przy powiększeniu i bez niejasnych komunikatów?".

## Slajd 3 - Dla kogo badaliśmy dostępność?

W raporcie wyróżniliśmy trzy główne grupy użytkowników. Pierwsza grupa to osoby z deficytami wzrokowymi, czyli osoby niewidome i słabowidzące. Dla nich kluczowe są teksty alternatywne, logiczna struktura nagłówków, dobry kontrast oraz poprawne działanie z czytnikiem ekranu.

Druga grupa to osoby z ograniczeniami motorycznymi. Mogą mieć problem z precyzyjnym używaniem myszy, więc platforma powinna umożliwiać pełną obsługę klawiaturą. Ważny jest widoczny fokus i brak sytuacji, w której użytkownik utknie w popupie albo galerii.

Trzecia grupa to osoby z trudnościami poznawczymi, na przykład z dysleksją albo problemami z koncentracją. Dla nich ważne są proste komunikaty, przewidywalna nawigacja i ograniczenie chaosu informacyjnego.

## Slajd 4 - Zakres scenariusza

Scenariusz audytu był oparty na podstawowej ścieżce zakupowej. Użytkownik zaczyna na stronie głównej i wyszukuje frazę "mysz komputerowa". Potem przechodzi do listy wyników i ustawia filtry: producent Logitech, stan nowy, typ bezprzewodowy, kolor szary oraz cena od 40 do 90 zł.

Następnie dodaje bardziej szczegółowe ograniczenia: Allegro Smart, dostawa do paczkomatu InPost, Super Sprzedawca i sortowanie według ceny z dostawą od najniższej. Potem otwiera ofertę, sprawdza najważniejsze informacje, dodaje produkt do koszyka i wybiera paczkomat oraz płatność BLIK. Zatrzymujemy się przed finalnym potwierdzeniem zamówienia.

Dodatkowo sprawdzaliśmy wybrane ekrany przy powiększeniu do 200 procent, bo to jest ważne dla osób słabowidzących i dla zgodności z WCAG.

## Slajd 5 - Metodologia

Metodologicznie był to audyt ekspercki dostępności. Wzięło w nim udział czterech audytorów: Adrian, Juliusz, Maciej i Sebastian. Każdy z nas niezależnie oceniał tę samą ścieżkę według checklisty.

Checklista miała 30 pytań kontrolnych, więc łącznie zebraliśmy 120 ocen cząstkowych. Ocena mogła być pozytywna, negatywna albo "nie dotyczy". Punktem odniesienia były wybrane kryteria WCAG 2.1 AA, głównie poziom podstawowy i średnio-zaawansowany.

Używaliśmy kilku technik: ręcznego przechodzenia ścieżki klawiaturą, sprawdzania widoczności fokusu, pracy z czytnikiem ekranu NVDA, testu powiększenia oraz narzędzi pomocniczych, takich jak WAVE i Axe DevTools. Automatyczne narzędzia traktowaliśmy jako wsparcie, a nie jako jedyne źródło oceny.

## Slajd 6 - Co mierzyliśmy?

Pytania kontrolne można podzielić na cztery obszary. Pierwszy to struktura i semantyka: czy obrazy mają sensowne teksty alternatywne, czy nagłówki są logiczne, czy pola formularzy mają etykiety i czy kontrolki są poprawnie rozpoznawane przez technologie asystujące.

Drugi obszar to czytelność wizualna. Sprawdzaliśmy kontrast tekstu do tła oraz zachowanie strony przy powiększeniu do 200 procent. Chodzi o to, czy teksty i przyciski nadal są widoczne, czy nic nie nachodzi na siebie i czy użytkownik nie traci informacji.

Trzeci obszar to obsługa klawiaturą: dostępność elementów aktywnych, brak pułapek klawiaturowych, logiczna kolejność fokusu i widoczność aktywnego elementu.

Czwarty obszar dotyczył formularzy i zmiany kontekstu, czyli komunikatów błędów, instrukcji oraz ostrzeżeń przed otwieraniem nowej karty.

## Slajd 7 - Przykłady kryteriów WCAG

Na tym slajdzie pokazuję kilka konkretnych kryteriów WCAG, żeby było jasne, że audyt nie był ogólnym "wydaje nam się", tylko odnosił się do określonych punktów standardu.

Przykładowo punkt 1.1.1 dotyczy treści nietekstowej, więc w naszym przypadku sprawdzaliśmy grafiki promocyjne i zdjęcia ofert. Punkt 1.3.1 dotyczy informacji i relacji, czyli między innymi nagłówków, etykiet i struktury formularzy. Punkt 1.4.3 dotyczy kontrastu, więc patrzyliśmy na czytelność cen, dostawy i filtrów.

W aktualnej wersji raportu doszły też kryteria takie jak 1.4.5, czyli tekst w postaci obrazów, oraz 2.4.4, czyli cel łącza i ostrzeganie przed otwarciem nowej karty. W części związanej z klawiaturą ważne były punkty 2.1.1 i 2.1.2: czy da się przejść proces bez myszy i czy użytkownik nie utknie w popupie albo galerii.

## Slajd 8 - Wykonanie badania

Każdy audytor najpierw pracował samodzielnie. To było ważne, bo dzięki temu nie sugerowaliśmy sobie nawzajem odpowiedzi. Po indywidualnej ocenie porównaliśmy arkusze. Jeśli wszyscy dali tę samą ocenę, pytanie traktowaliśmy jako bezsporne.

Jeżeli pojawiały się różnice, wracaliśmy do danego fragmentu i wspólnie sprawdzaliśmy, co było przyczyną. Czasem problem był realną barierą, a czasem wynikał z innej sesji Allegro, innego popupu, reklamy albo różnej interpretacji zachowania czytnika ekranu.

Największe trudności wynikały z dynamicznego charakteru Allegro. Reklamy i popupy nie zawsze pojawiały się tak samo u każdej osoby. Do tego dochodziła różna biegłość w NVDA oraz bardzo złożony DOM na liście wyników, co utrudniało manualną analizę.

## Slajd 9 - Wyniki w liczbach

Wyniki liczbowe pokazują ogólnie dość dobry poziom dostępności, ale z istotnymi wyjątkami. Z 120 ocen cząstkowych 84 były pozytywne, 30 negatywnych, a 6 oznaczono jako "nie dotyczy".

To oznacza, że większość podstawowych elementów działała poprawnie w badanej ścieżce, ale negatywnych ocen było na tyle dużo, że nie można powiedzieć, że Allegro jest w pełni dostępne. Te liczby trzeba rozumieć jako wynik checklisty, nie jako statystykę populacyjną.

Najważniejszy praktyczny wniosek jest taki: główny proces zakupowy dało się przejść, ale niektóre elementy mogą znacząco utrudniać korzystanie osobom zależnym od klawiatury, czytnika ekranu lub powiększenia.

## Slajd 10 - Zgodność audytorów

Drugi wykres pokazuje zgodność ocen między audytorami. W surowym zliczeniu 18 pytań było spójnych, a 12 miało rozbieżności. W samym raporcie dodatkowo podkreśliliśmy, że 15 pytań było jednomyślnie pozytywnych, 6 kryteriów miało co najmniej trzy oceny negatywne albo pełną niezgodność, a 1 kryterium było jednomyślnie "nie dotyczy".

Te rozbieżności są ważne, bo pokazują, że audyt dostępności dynamicznej strony nie jest zawsze zero-jedynkowy. Allegro jest personalizowane, może mieć różne popupy, różne reklamy, różne warianty testów A/B. To sprawia, że jedna osoba może trafić na problem, a inna nie.

Rozbieżności nie oznaczały, że audyt był błędny. One pokazywały miejsca, które wymagały ponownej weryfikacji i ostrożnej interpretacji. Szczególnie dotyczyło to pułapek klawiaturowych, nagłówków, opisów grafik i działania interfejsu przy powiększeniu.

## Slajd 11 - Odpowiedzi na pytania Q1-Q2

Ten slajd jest ważny, bo łączy ogólne liczby z konkretnymi pytaniami badawczymi z raportu. Wcześniej mieliśmy głównie zbiorcze podsumowanie ocen, a teraz pokazujemy, jak te oceny odpowiadają na pytania Q.

Przy Q1 pytaliśmy, czy interfejs jest w pełni użyteczny dla osób nawigujących wyłącznie klawiaturą. Odpowiedź brzmi: nie w pełni. Elementy aktywne były dostępne klawiaturą, kolejność fokusu była logiczna i fokus był widoczny - te kryteria dostały po 4 pozytywne oceny na 4. Problemem były jednak pułapki klawiaturowe: przy kryterium 2.1.2 dwie osoby oceniły je negatywnie, bo pojawiały się problemy z opuszczaniem galerii albo popupów.

Wniosek dla Q1 jest taki, że główny proces da się przejść bez myszy, ale nie można powiedzieć, że obsługa klawiaturą jest całkowicie bezpieczna. Najważniejsza poprawka to lepsze zarządzanie fokusem w modalach i możliwość wyjścia klawiszem Escape.

Przy Q2 pytaliśmy, czy architektura informacji jest poprawnie interpretowana przez czytniki ekranu. Tu odpowiedź jest częściowa. Standardowe atrybuty alt były ocenione dobrze, ale problemy pojawiły się przy złożonych grafikach, dekoracyjnych obrazach, strukturze nagłówków, dynamicznych komponentach i linkach otwierających nową kartę bez ostrzeżenia. Szczególnie mocno widać to w kryteriach: nagłówki 3 negatywne oceny na 4, dynamiczne komponenty 3 negatywne na 4 i nowe karty 4 negatywne na 4.

## Slajd 12 - Odpowiedzi na pytania Q3-Q4

Q3 dotyczyło tego, czy szata graficzna i formularze są przyjazne dla osób z dysleksją i słabowidzących. Odpowiedź jest raczej pozytywna, ale z wyjątkami. Kontrast tekstu dostał 4 pozytywne oceny na 4, reflow i odstępy tekstu również były ocenione pozytywnie. Przy powiększeniu do 200 procent pojawił się jednak jeden negatywny wynik, bo drobne elementy na stronie wyników mogły nachodzić na tekst.

Największy problem w Q3 to tekst w postaci obrazów: to kryterium dostało 4 negatywne oceny na 4. To oznacza, że ważne informacje w opisach sprzedawców bywają umieszczane jako grafiki, których nie da się wygodnie powiększać, kopiować ani odczytać przez czytnik. Dodatkowo przy formularzach jedna osoba wskazała problem z błędami walidacji, które pojawiały się bez przeniesienia fokusu.

Q4 to pytanie zbiorcze o poziom dostępności całej badanej ścieżki. Tu mówimy: poziom jest dobry, ale niepełny. Zebraliśmy 84 oceny pozytywne na 120, czyli 70 procent wszystkich ocen. Jeśli pominąć odpowiedzi "nie dotyczy", wychodzi 84 pozytywne na 114 aplikowalnych ocen, czyli około 73,7 procent.

Do tego 18 z 30 pytań było spójnych między audytorami, a 12 miało rozbieżności. Wykryliśmy 10 konkretnych usterek: 6 istotnych i 4 nieistotne. Końcowy wniosek dla Q4 jest taki, że Allegro ma solidne podstawy dostępności, ale nie osiąga pełnej zgodności, bo problematyczne są elementy dynamiczne, grafiki z tekstem, galerie, popupy, linki do nowych kart i obsługa błędów formularzy.

## Slajd 13 - Co działało dobrze?

Warto podkreślić, że raport nie mówi tylko o problemach. W badanej ścieżce Allegro miało też mocne strony. Kluczowe elementy aktywne były dostępne z klawiatury, fokus był widoczny, a kolejność przechodzenia fokusu była logiczna.

Pozytywnie oceniliśmy też kontrast tekstów w badanej ścieżce oraz brak automatycznie uruchamianego dźwięku. To ważne, bo automatyczny dźwięk byłby problemem dla użytkowników czytników ekranu i dla osób z trudnościami koncentracji.

Większość elementów akcji i etykiet formularzy również działała poprawnie. Dlatego nasz wniosek nie brzmi: "Allegro jest niedostępne". Bardziej precyzyjnie: "Allegro ma solidne podstawy dostępności w badanej ścieżce, ale zawiera bariery wymagające naprawy".

## Slajd 14 - Najważniejsze bariery

Na tym slajdzie pokazuję trzy najważniejsze przykłady barier, które najlepiej oddają praktyczne problemy z dostępnością.

Pierwszym typem problemu były pułapki klawiaturowe w galeriach i popupach. Jeśli użytkownik korzysta tylko z klawiatury i nie może opuścić modala, to może zostać zablokowany w środku procesu. To jest szczególnie istotne dla osób z ograniczeniami motorycznymi oraz dla osób korzystających z czytnika ekranu.

Drugim problemem były dynamiczne filtry. Po zmianie filtra lista wyników się przeładowywała, ale czytnik ekranu nie zawsze jasno informował użytkownika, co się zmieniło. Tu rekomendacją są regiony `aria-live`.

Trzecia grupa problemów dotyczyła opisów ofert: tekstów alternatywnych, hierarchii nagłówków i tekstu osadzonego jako grafika w treściach dostarczanych przez sprzedawców. Na końcu tego slajdu warto dodać, że w pełni negatywne kryteria dotyczyły między innymi obrazów z tekstem oraz braku ostrzeżenia przed otwieraniem linków w nowej karcie.

## Slajd 15 - Pełna lista wykrytych błędów

Po omówieniu tych trzech najważniejszych przykładów pokazuję pełną listę błędów z raportu. To jest ważne, bo wcześniej skupiłem się na najbardziej praktycznych barierach, ale w dokumencie wskazaliśmy łącznie dziesięć konkretnych usterek.

Na tej liście są problemy ze strony głównej, wyników wyszukiwania, szczegółów oferty, galerii, koszyka, stopki, widoku przy powiększeniu oraz strony płatności. Doszły też dwa punkty z aktualnej wersji raportu: ważne informacje umieszczane jako grafiki z tekstem oraz brak atrybutów `autocomplete` w formularzu dostawy. Warto powiedzieć, że nie wszystkie mają taką samą wagę. Istotne były przede wszystkim te, które wpływały na samodzielne wykonanie procesu zakupowego: brak altów, dynamiczne filtry bez komunikatu, pułapki klawiaturowe, błędy formularzy bez przeniesienia fokusu, linki otwierające nową kartę bez ostrzeżenia oraz tekst ukryty w grafikach.

Mniej istotne były problemy, które bardziej obniżały komfort niż blokowały zadanie, na przykład pojedyncze problemy z układem przy powiększeniu, powtarzający się tekst przycisku w czytniku ekranu albo brak `autocomplete` w części pól formularza.

## Slajd 16 - Rekomendacje dla platformy

Rekomendacje uporządkowaliśmy priorytetami. Najpierw trzeba poprawić problemy, które mogą blokować wykonanie zadania. Dlatego najwyższy priorytet mają galerie i modale: powinny obsługiwać klawisz Escape, poprawnie zarządzać fokusem i nie tworzyć pułapek klawiaturowych.

Drugim wysokim priorytetem są dynamiczne filtry i aktualizacja wyników. Po zmianie filtra użytkownik czytnika ekranu powinien dostać jasną informację, że lista ofert została odświeżona. Do tego można wykorzystać `aria-live`.

Trzecia rekomendacja dotyczy koszyka i formularzy: jeśli pojawia się błąd, fokus powinien trafić na pole lub komunikat błędu. Dalej warto poprawić szablony sprzedawców, wymuszając lepsze teksty alternatywne i nagłówki, oraz informować o linkach otwieranych w nowej karcie.

## Slajd 17 - Wnioski końcowe

Końcowy wniosek jest umiarkowany. Allegro w badanej ścieżce ma solidne podstawy dostępności: da się przejść przez wyszukiwanie, ofertę i koszyk, a wiele kryteriów zostało ocenionych pozytywnie. Jednocześnie audyt pokazał bariery, które mogą obniżać komfort albo miejscami blokować użytkowników.

Najważniejsza lekcja z projektu jest taka, że automatyczne narzędzia nie wystarczają. Axe czy WAVE pomagają znaleźć część problemów, ale nie ocenią sensowności tekstu alternatywnego, logiczności fokusu ani tego, czy komunikat jest zrozumiały dla użytkownika.

Na przyszłość ujednoliciłbym środowisko testowe: czysty profil Chrome, ta sama rozdzielczość, te same ustawienia i dodatki. Dodałbym też badanie z realnymi użytkownikami z konkretnymi potrzebami. Nasz audyt jest dobrym punktem wyjścia, ale nie zastępuje pełnego badania z osobami z niepełnosprawnościami.

## Krótkie zdania na pytania po prezentacji

- To był audyt ekspercki, nie certyfikacja dostępności Allegro.
- Wnioski dotyczą badanej ścieżki zakupowej, a nie całego portalu.
- Automatyczne narzędzia były pomocnicze, finalna ocena wymagała testów manualnych.
- Rozbieżności wynikały między innymi z dynamicznej natury Allegro i personalizacji widoków.
- Najważniejsze bariery dotyczyły klawiatury, dynamicznych zmian, tekstów alternatywnych i semantyki.
- Task 2 rozszerza Task 1: najpierw sprawdzaliśmy użyteczność, potem dostępność tej samej ścieżki.
