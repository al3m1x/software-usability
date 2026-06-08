import matplotlib.pyplot as plt

# ================= ZHARDKODOWANE WARTOŚCI =================
# Wykres 1: oceny P, N, ND
count_p = 77
count_n = 38
count_nd = 5

# Wykres 2: zgodność ewaluatorów
consistent = 20    # spójne (wszyscy dali taką samą ocenę)
conflictive = 10   # z rozbieżnościami (różne oceny w zespole)

# ================= RYSOWANIE WYKRESÓW =================

# ----------------- WYKRES 1 -----------------
plt.figure(figsize=(7, 5))
labels_answers = ['Pozytywne (P)', 'Negatywne (N)', 'Nie dotyczy (ND)']
values_answers = [count_p, count_n, count_nd]
colors_answers = ['#4CAF50', '#F44336', '#9E9E9E']

bars_ans = plt.bar(labels_answers, values_answers, color=colors_answers)
plt.title(f'Rozkład ogólnej liczby ocen (Suma {count_p + count_n + count_nd} ocen)', fontsize=12)
plt.ylabel('Ilość wystąpień', fontsize=10)

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
plt.title(f'Zgodność ewaluatorów w obrębie {consistent + conflictive} pytań', fontsize=12)
plt.ylabel('Ilość pytań', fontsize=10)

for bar in bars_cons:
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 0.1, str(yval), ha='center', va='bottom', fontweight='bold')

plt.tight_layout()
plt.savefig('chart_consistency.png')
plt.close()