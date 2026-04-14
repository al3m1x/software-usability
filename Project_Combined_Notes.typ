#set document(title: "Software Usability Project – Notatki (Task 1 & Task 2)")
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  numbering: "1",
)
#set text(font: "New Computer Modern", size: 11pt, lang: "pl")
#set par(justify: true, leading: 0.65em)
#show heading.where(level: 1): it => {
  v(1.2em)
  it
  v(0.5em)
}
#show heading.where(level: 2): it => {
  v(0.7em)
  it
  v(0.3em)
}

// ── Title ──────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Software Usability Project – Notatki]
  #v(0.3em)
  #text(size: 12pt, style: "italic")[Task 1 (Użyteczność) & Task 2 (Dostępność) — Allegro]
]

#v(1.2em)
#line(length: 100%, stroke: 0.5pt)

// ══════════════════════════════════════════════════════════════════════════
// TASK 1
// ══════════════════════════════════════════════════════════════════════════
#v(0.8em)
#text(size: 13pt, weight: "bold")[TASK 1 — Badanie użyteczności (Usability)]
#v(0.3em)
#line(length: 100%, stroke: 1pt)

= Nazwa i opis aplikacji

*Nazwa:* Allegro (serwis internetowy / aplikacja mobilna)

*Opis:* Największa polska platforma e-commerce typu marketplace. Umożliwia użytkownikom przeglądanie ofert, filtrowanie wyników, porównywanie cen oraz realizację wieloetapowego procesu zakupowego wraz z wyborem metod płatności i dostawy.

= Cel badania (GQM)

*Cel (Goal):*
Analiza platformy Allegro pod kątem użyteczności z punktu widzenia okazjonalnego kupującego. Celem jest ocena płynności interakcji i efektywności podczas wyszukiwania konkretnego produktu z użyciem zaawansowanych filtrów oraz przejścia przez koszyk do finalizacji zamówienia.

*Pytania (Questions):*
- Jak szybko nowy lub okazjonalny użytkownik potrafi zastosować filtry (np. stan produktu, przedział cenowy, darmowa dostawa), aby znaleźć pożądany przedmiot?
- Jakie błędy nawigacyjne popełniają użytkownicy na etapie wyboru metody dostawy i płatności?

*Metryki (Metrics):*
- Czas wykonania zadania od wpisania hasła w wyszukiwarkę do kliknięcia „Kupuję i płacę" (w sekundach).
- Wskaźnik sukcesu zadania (procent użytkowników, którzy poprawnie przeszli cały proces).
- Liczba błędów lub zawahań (np. niezamierzone cofnięcie się do poprzednich kroków w koszyku).

#v(1.5em)
#line(length: 100%, stroke: (dash: "dashed", paint: luma(180)))

// ══════════════════════════════════════════════════════════════════════════
// TASK 2
// ══════════════════════════════════════════════════════════════════════════
#v(0.8em)
#text(size: 13pt, weight: "bold")[TASK 2 — Badanie dostępności (Accessibility)]
#v(0.3em)
#line(length: 100%, stroke: 1pt)

= Nazwa i opis aplikacji

*Nazwa:* Allegro (serwis internetowy)

*Opis:* Największa polska platforma e-commerce typu marketplace. Umożliwia użytkownikom przeglądanie ofert, filtrowanie wyników, porównywanie cen oraz realizację wieloetapowego procesu zakupowego wraz z wyborem metod płatności i dostawy.

*Kontekst:* W przypadku złożonych platform e-commerce świetnym tematem na badanie dostępności jest nawigacja za pomocą samej klawiatury (bez użycia myszki). To symuluje wyzwania, z jakimi mierzą się osoby z niepełnosprawnością ruchową dłoni.

= Cel badania (GQM)

Głównym celem niniejszego badania jest ocena dostępności platformy Allegro dla użytkowników z niepełnosprawnością ruchową, którzy korzystają wyłącznie z klawiatury (bez myszki). Ewaluacja ma na celu identyfikację barier cyfrowych, które mogą uniemożliwiać lub utrudniać samodzielne przeglądanie ofert i finalizację zakupu. Badanie przeprowadzono metodą systematycznej oceny przy użyciu listy kontrolnej opartej na standardzie WCAG 2.1.

Zakres badania obejmuje: stronę główną, stronę wyników wyszukiwania (z panelem filtrów), stronę szczegółów oferty oraz koszyk i proces składania zamówienia.

*Pytania badawcze (powiązane z kryteriami WCAG):*
- Czy wszystkie interaktywne elementy strony (linki, przyciski, filtry, suwaki cenowe) są obsługiwalne za pomocą klawiatury? (WCAG 2.1.1)
- Czy na stronie występują pułapki klawiaturowe - miejsca, z których użytkownik nie może wyjść klawiszem Tab lub Shift+Tab? (WCAG 2.1.2)
- Czy wskaźnik fokusu klawiatury (obrys zaznaczonego elementu) jest stale widoczny podczas nawigacji? (WCAG 2.4.7)
- Czy kolejność fokusowania elementów jest logiczna i zgodna z wizualnym układem strony? (WCAG 2.4.3)
- I pozostałe pytania z listy kontrolnej WCAG

*Metryki:*
- Liczba pytań kluczowych z listy kontrolnej WCAG z oceną negatywną.
- Liczba elementów interaktywnych niedostępnych z klawiatury (wynik negatywny dla WCAG 2.1.1).
- Liczba zidentyfikowanych pułapek klawiaturowych (wynik negatywny dla WCAG 2.1.2).
- Wskaźnik sukcesu zadania „dodaj przedmiot do koszyka" przy użyciu samej klawiatury (w %).
