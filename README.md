# Codesign – CESI

## 🔗 Lien vers le support Notion
https://chief-violin-c20.notion.site/TP-VHDL-Codesign-2026-2be3b9c822568011b904e0d58f24585e

---

## ✅ Prise en main de Quartus 18
✔ Terminée

---

## 🟦 Exercice 1 – Compteur 0 → 15

**Objectif :**  
Écrire en VHDL un compteur 4 bits allant de **0 à 15**, puis réaliser sa simulation.

**Livrables :**
- Code VHDL du compteur  
- Testbench de simulation  

✔ Exercice réalisé et validé

---

## 🟩 Exercice 2 – Compteur 0 → 9 + test sur DE0-Nano

**Objectif :**  
Modifier le compteur précédent pour qu'il compte de **0 à 9**.

### 🔧 Modification principale

Avant (0 → 15) :
```vhdl
if count = "1111" then   -- 15
    count <= (others => '0');
```
Après (0 → 9) :
```vhdl
if count = "1001" then   -- 9
    count <= (others => '0');
```

### 💡 Remarque (DE0-Nano)

La carte DE0-Nano utilise une horloge **clk_50MHz**, trop rapide pour observer le comptage sur les LEDs.  
Un ralentissement de l’horloge sera nécessaire pour un affichage visible.

✔ Même testbench utilisé pour les compteurs 0–15 et 0–9  
✔ Simulation validée avant test expérimental

---

## 🟥 Exercice 3 – Compteur synchrone 0 → 9 avec période de 1 seconde

**Objectif :**  
Réaliser un compteur synchrone **0 → 9** avec un incrément toutes les **1 seconde**.

### 🛠 Solution

Ajout d’un **diviseur d’horloge** :
- Entrée : 50 MHz  
- Sortie : 1 Hz  

Le compteur est alors piloté par cette horloge lente.

✔ Compteur fonctionnel  
✔ Simulation possible  
✔ Prêt pour implémentation sur la carte DE0-Nano

dout_tb passe de 0 → 1 → 2

avec un changement toutes les ~1000 ms (1 seconde):

    ✔ donc le temps de comptage est bien de 1 s

    ✔ le compteur est synchrone

    ✔ l’objectif de l’exercice est atteint

---

## 📁 Outils utilisés
- Quartus Prime 18
- ModelSim
- Carte FPGA DE0-Nano
