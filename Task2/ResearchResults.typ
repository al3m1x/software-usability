#set document(title: "Wyniki badania - analiza")
#set page(paper: "a4", margin: (x: 2cm, y: 2cm))
#set text(font: "New Computer Modern", size: 10pt, lang: "pl")

#align(center)[
  #text(size: 14pt, weight: "bold")[Tabela podsumowująca badanie dostępności cyfrowej platformy Allegro] \
  #v(0.5em)
  #text(size: 11pt)[Poziomy analizy: podstawowy oraz średnio-zaawansowany]
]

#v(1em)
*Możliwe odpowiedzi (skróty w tabeli):*
- *N (negatywna)* – oznacza niezgodność z WCAG 2.1 i ustawą,
- *P (pozytywna)* – oznacza zgodność z WCAG 2.1 i ustawą,
- *ND (nie dotyczy)* – oznacza brak elementu do oceny na testowanych stronach.

#v(1.5em)
// Główna tabela ewaluacji
#table(
  columns: (15%, 45%, 12%, 7%, 7%, 7%, 7%),
  align: (left, left, center, center, center, center, center),
  fill: (col, row) => if row == 0 { luma(230) } else { none },
  
  [*Kryterium*], [*Pytanie*], [*Poziom*], [*A*], [*J*], [*M*], [*S*],
  
  [1.1.1 - Treść nietekstowa], [Czy złożony element graficzny ma poszerzony opis?], [podstawowy], [N], [N], [ND], [P],
  [], [Czy element `<img>` przekazujący informacje ma poprawnie sformułowany atrybut `<alt>`?], [średni], [P], [P], [P], [P],
  [], [Czy dekoracyjny element `<img>` ma pusty atrybut `<alt>`?], [średni], [ND], [N], [N], [N],
  [1.2.2 - Napisy rozszerzone], [Czy dla treści wideo dostępne są napisy rozszerzone?], [podstawowy], [P], [P], [N], [P],
  [1.3.1 - Informacje i relacje], [Czy nagłówki są zdefiniowane w kodzie strony, w odpowiedniej kolejności?], [średni], [N], [P], [N], [N],
  [], [Czy elementy HTML służące do uruchomienia akcji są poprawnie użyte?], [średni], [P], [P], [P], [P],
  [1.3.2 - Zrozumiała kolejność], [Czy kolejność odczytu treści przez czytnik ekranu jest logiczna?], [podstawowy], [P], [P], [P], [P],
  [1.3.5 - Określenie przeznaczenia], [Czy pola formularzy wspierają odpowiednie atrybuty autocomplete?], [średni], [P], [P], [P], [N],
  [1.4.1 - Użycie koloru], [Czy kolor nie jest jedynym sposobem przekazywania informacji wizualnych?], [podstawowy], [P], [P], [P], [P],
  [1.4.2 - Kontrola odtwarzania dźwięku], [Czy jest automatycznie uruchamiany dźwięk, którego nie da się zatrzymać? *(pytanie kluczowe)*], [podstawowy], [P], [P], [P], [P],
  [1.4.3 - Kontrast (minimalny)], [Czy kontrast tekstu w stosunku do tła wynosi co najmniej 4,5:1?], [średni], [P], [P], [P], [P],
  [1.4.4 - Zmiana rozmiaru tekstu], [Czy po powiększeniu widoku strony do 200% widać całość informacji ze strony?], [podstawowy], [P], [N], [P], [P],
  [1.4.5 - Tekst w postaci obrazów], [Czy do przekazywania tekstu używa się rzeczywistego tekstu zamiast obrazów?], [średni], [N], [N], [N], [N],
  [1.4.10 - Przepływ tekstu (Reflow)], [Czy treść dopasowuje się do szerokości ekranu bez przewijania w poziomie?], [średni], [P], [P], [P], [P],
  [1.4.11 - Kontrast element. nietekst.], [Czy kontrast elementów nietekstowych (ikon, granic) wynosi min. 3:1?], [średni], [P], [N], [P], [P],
  [1.4.12 - Odstępy w tekście], [Czy zmiana odstępów między wierszami i literami nie powoduje ucięcia tekstu?], [średni], [P], [P], [P], [P],
  [2.1.1 - Klawiatura], [Czy wszystkie elementy aktywne w serwisie są dostępne za pomocą klawiatury? *(pytanie kluczowe)*], [podstawowy], [P], [P], [P], [P],
  [2.1.2 - Brak pułapki klawiaturowej], [Czy jest na stronie pułapka klawiaturowa? *(pytanie kluczowe)*], [podstawowy], [P], [N], [N], [P],
  [2.2.1 - Limit czasu], [Czy użytkownik ma możliwość wydłużenia lub wyłączenia limitu czasu sesji?], [podstawowy], [ND], [ND], [ND], [ND],
  [2.4.1 - Pominięcie bloków], [Czy istnieje mechanizm pozwalający na pominięcie powtarzających się bloków?], [podstawowy], [P], [P], [P], [N],
  [2.4.2 - Tytuł strony], [Czy każda strona ma unikalny i opisowy tytuł?], [podstawowy], [P], [P], [P], [P],
  [2.4.3 - Kolejność fokusu], [Czy nawigacja za pomocą klawiatury jest logiczna i zgodna z wyglądem strony?], [podstawowy], [P], [P], [P], [P],
  [2.4.4 - Cel łącza], [Czy jest ostrzeżenie przed otwarciem nowego okna/zakładki w przeglądarce?], [podstawowy], [N], [N], [N], [N],
  [2.4.5 - Wiele dróg], [Czy użytkownik ma dostęp do wielu sposobów znalezienia danej strony?], [średni], [P], [P], [P], [P],
  [2.4.6 - Nagłówki i etykiety], [Czy nagłówki i etykiety jasno opisują temat lub cel?], [średni], [P], [P], [P], [P],
  [2.4.7 - Widoczny fokus], [Czy widać, który element jest aktywny przy nawigacji klawiaturą?], [podstawowy], [P], [P], [P], [P],
  [3.2.3 - Spójna nawigacja], [Czy wygląd i działanie menu jest takie same na wszystkich stronach?], [podstawowy], [N], [P], [N], [N],
  [3.3.1 - Identyfikacja błędu], [Czy informacja o błędzie w formularzu jasno opisuje błąd, jest dostępna i zrozumiała dla wszystkich użytkowników?], [podstawowy], [N], [P], [P], [P],
  [3.3.2 - Etykiety lub instrukcje], [Czy obok pól formularzy są etykiety mówiące jasno, jakie dane wpisać w te pola?], [podstawowy], [P], [P], [P], [P],
  [4.1.2 - Nazwa, rola, wartość], [Czy nazwa i rola dynamicznych komponentów jest poprawnie przekazywana technologiom asystującym?], [podstawowy], [N], [P], [N], [N]
)

#v(2em)

// Dodatek - szczegółowe usterki
#align(center)[
  #text(size: 14pt, weight: "bold")[Dodatek do analizy wykrytych błędów]
]

*Legenda wagi błędu:*
- *nieistotne* - element jest mało ważny, ma niewielki wpływ na dostępność strony,
- *istotne* - element jest bardzo ważny, ma znaczący wpływ na dostępność i realizację procesu zakupowego.

#v(1em)

#table(
  columns: (auto, 30%, auto, 15%),
  align: (center, left, left, center),
  fill: (col, row) => if row == 0 { luma(230) } else { none },
  
  [*LP*], [*Adres / Podstrona*], [*Szczegółowy opis błędu z wyjaśnieniami*], [*Nadana waga błędu*],
  
  [1.], [Strona główna (karuzele promowane)], [Brak atrybutów `alt` w miniaturkach niektórych promowanych kampanii sprzedażowych.], [istotne],
  [2.], [Lista wyników wyszukiwania (filtry)], [Dynamiczne przeładowanie listy ofert po kliknięciu filtra checkboxa nie jest anonsowane przez czytnik (brak regionów aria-live).], [istotne],
  [3.], [Szczegóły oferty (sekcja "Opis")], [Sprzedawcy układają własne sekcje opisowe omijając standardową hierarchię nagłówków (np. używają `<h3>` pomijając `<h2>` lub `<h1>`).], [nieistotne],
  [4.], [Szczegóły oferty (galeria zdjęć)], [Otwarcie powiększenia zdjęcia u niektórych sprzedawców powoduje uwięzienie fokusu – brak obsługi przycisku "Esc".], [istotne],
  [5.], [Koszyk / Formularz dostawy], [Ostrzeżenia dotyczące nieprawidłowego numeru paczkomatu lub braku danych wyskakują z boku, bez automatycznego przeniesienia fokusu na komunikat błędu.], [istotne],
  [6.], [Stopka strony], [Linki odsyłające do zewnętrznych stron "Dla Sprzedających" otwierają się w nowej karcie bez powiadomienia wizualnego i głosowego dla czytnika.], [istotne],
  [7.], [Strona wyników wyszukiwania], [Przy powiększeniu widoku do 200% niektóre drobne ikonki informujące o darmowej dostawie nakładają się na nazwę sprzedawcy.], [nieistotne],
  [8.], [Strona wyboru płatności], [Przycisk "Przejdź do płatności" zawiera powtarzalny tekst dla czytnika, co objawia się tzw. "efektem jąkania".], [nieistotne],
  [9.], [Szczegóły oferty (sekcja "Opis")], [Część sprzedawców umieszcza ważne informacje (np. tabele rozmiarów) jako nieedytowalne grafiki z tekstem, co uniemożliwia ich odczytanie przez NVDA.], [istotne],
  [10.], [Koszyk / Formularz dostawy], [Brak atrybutów `autocomplete` na polach danych zamawiającego (np. email, telefon), co utrudnia automatyczne wypełnianie formularza.], [nieistotne]
)

#v(2em)
*Zestawienie Pytania Kluczowe - Podsumowanie:*
- *Czy wszystkie elementy aktywne w serwisie są dostępne za pomocą klawiatury?* \
  -> _pozytywna, zgodna_ – oznaczono na podstawie braku jakichkolwiek problemów przy nawigacji procesem zakupowym.
- *Czy jest na stronie pułapka klawiaturowa?* \
  -> _niezgodne, 50/50_ – napotkano sporadyczne utknięcia w pop-upach i zdjęciach zależne od stanu sesji badacza.
- *Czy są elementy, które szybko błyskają na czerwono lub gwałtownie zmieniają jasność?* \
  -> _pozytywna, zgodna_ – brak tego typu zaburzających elementów na platformie.
- *Czy jest automatycznie uruchamiany dźwięk, którego nie da się zatrzymać?* \
  -> _pozytywna, zgodna_ – testy były wolne od obciążeń dźwiękowych narzuconych z góry.