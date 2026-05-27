import matplotlib.pyplot as plt

# Dane przeanalizowane z tabeli w pliku ResearchResults.typ
# Każdy wiersz to oceny Twojej grupy badawczej wg kolumn A, J, M, S
data = [
    ['N', 'N', 'ND', 'P'],
    ['P', 'P', 'P', 'P'],
    ['ND', 'N', 'N', 'N'],
    ['N', 'P', 'N', 'N'],
    ['P', 'P', 'P', 'P'],
    ['P', 'P', 'P', 'P'],
    ['P', 'P', 'P', 'P'],
    ['P', 'N', 'P', 'P'],
    ['P', 'P', 'P', 'P'],
    ['P', 'N', 'N', 'P'],
    ['P', 'P', 'P', 'P'],
    ['N', 'N', 'N', 'N'],
    ['P', 'P', 'P', 'P'],
    ['N', 'P', 'N', 'N'],
    ['N', 'P', 'P', 'P'],
    ['P', 'P', 'P', 'P']
]

# Zwykłe zliczenie ogólnej liczby poszczególnych ocen
count_p = sum(row.count('P') for row in data)
count_n = sum(row.count('N') for row in data)
count_nd = sum(row.count('ND') for row in data)

# Sprawdzenie zgodności poszczególnych pytań 
# Consistent - to wiersze, gdzie cały zespół wpisał to samo
consistent = 0
conflictive = 0

for row in data:
    # Wrzucenie do seta eliminuje duplikaty. Długość 1 oznacza, że wszyscy ocenili jednakowo.
    if len(set(row)) == 1:
        consistent += 1
    else:
        conflictive += 1

# ================= USTAWIENIA I RYSOWANIE WYKRESÓW =================

# ----------------- WYKRES 1 -----------------
plt.figure(figsize=(7, 5))
labels_answers = ['Pozytywne (P)', 'Negatywne (N)', 'Nie dotyczy (ND)']
values_answers = [count_p, count_n, count_nd]
colors_answers = ['#4CAF50', '#F44336', '#9E9E9E']

bars_ans = plt.bar(labels_answers, values_answers, color=colors_answers)
plt.title('Rozkład ogólnej liczby ocen (Suma 64 ocen)', fontsize=12)
plt.ylabel('Ilość wystąpień', fontsize=10)

# Dodanie podpisów wartości nad kolumnami
for bar in bars_ans:
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 0.5, str(yval), ha='center', va='bottom', fontweight='bold')

plt.tight_layout()
plt.savefig('chart_answers.png')
plt.close()

# ----------------- WYKRES 2 -----------------
plt.figure(figsize=(7, 5))
labels_consistency = ['Spójne (Consistent)', 'Z rozbieżnościami (Conflictive)']
values_consistency = [consistent, conflictive]
colors_consistency = ['#2196F3', '#FFC107']

bars_cons = plt.bar(labels_consistency, values_consistency, color=colors_consistency)
plt.title('Zgodność ewaluatorów w obrębie 16 pytań', fontsize=12)
plt.ylabel('Ilość pytań', fontsize=10)

# Dodanie podpisów wartości nad kolumnami
for bar in bars_cons:
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 0.1, str(yval), ha='center', va='bottom', fontweight='bold')

plt.tight_layout()
plt.savefig('chart_consistency.png')
plt.close()