# Codesign - CESI

## Lien vers le support Notion
https://chief-violin-c20.notion.site/TP-VHDL-Codesign-2026-2be3b9c822568011b904e0d58f24585e

---

## Prise en main de Quartus 18
Statut: terminee.

---

## Exercice 1 - Compteur 0 -> 15

**Objectif**  
Ecrire en VHDL un compteur 4 bits allant de **0 a 15**, puis realiser sa simulation.

**Livrables**
- Code VHDL du compteur
- Testbench de simulation

Statut: exercice realise et valide.

---

## Exercice 2 - Compteur 0 -> 9 + test sur DE0-Nano

**Objectif**  
Modifier le compteur precedent pour qu'il compte de **0 a 9**.

### Modification principale

Avant (0 -> 15):
```vhdl
if count = "1111" then   -- 15
    count <= (others => '0');
```

Apres (0 -> 9):
```vhdl
if count = "1001" then   -- 9
    count <= (others => '0');
```

### Remarque (DE0-Nano)

La carte DE0-Nano utilise une horloge **clk_50MHz**, trop rapide pour observer le comptage sur les LEDs.  
Un ralentissement de l'horloge est necessaire pour obtenir un affichage visible.

Validation:
- Meme testbench utilise pour les compteurs 0-15 et 0-9.
- Simulation validee avant test experimental.

---

## Exercice 3 - Compteur synchrone 0 -> 9 avec periode de 1 seconde

**Objectif**  
Realiser un compteur synchrone **0 -> 9** avec une incrementation toutes les **1 seconde**.

### Solution

Ajout d'un **diviseur d'horloge**:
- Entree: 50 MHz
- Sortie: 1 Hz

Le compteur est pilote par cette horloge lente.

Validation:
- Compteur fonctionnel.
- Simulation possible.
- Pret pour implementation sur la carte DE0-Nano.

Observation de simulation:
- `dout_tb` passe de 0 -> 1 -> 2.
- Le changement se fait toutes les ~1000 ms (1 seconde).

Conclusion:
- Le temps de comptage est bien de 1 s.
- Le compteur est synchrone.
- L'objectif de l'exercice est atteint.

Un diviseur d'horloge a ete ajoute afin de transformer l'horloge de la carte (50 MHz) en une horloge lente de 1 Hz.  
Le compteur 0 a 9 est pilote par cette horloge divisee, ce qui permet une incrementation toutes les 1 seconde.  
La simulation sous ModelSim montre que la sortie evolue de 0 a 9 avec un pas temporel de 1 s, validant le bon fonctionnement du compteur.

![Schema push button](priseEnMain/doc/shema_pushBotton.JPG)

---

## Exercice 4

![Exercice 4 - Schema](priseEnMain/doc/image.png)
![Exercice 4 - Simulation](priseEnMain/doc/mae_simulation_prof.png)

Le testbench verifie le bon fonctionnement de la machine a etats en testant:
- le reset,
- les transitions entre `etat1` et `etat2`,
- le maintien dans un etat lorsque l'entree ne correspond pas a une transition valide.

Il valide egalement la priorite du reset, y compris lorsqu'il est applique pendant un changement d'etat, et confirme **que la sortie `out1` depend uniquement de l'etat present (machine de Moore)**.

Dans le testbench:
```vhdl
constant clk_period : time := 20 ns;

ck_tb <= '0'; wait for clk_period/2;
ck_tb <= '1'; wait for clk_period/2;
```

Donc:
- Periode = 20 ns
- Frequence = 1 / 20 ns = 50 MHz

![Exercice 4 - Verification](priseEnMain/doc/mae_verif_prof.JPG)

---

## Exercice 5

Programmer, simuler et tester le compteur asynchrone suivant:

![Exercice 5 - Enonce](priseEnMain/doc/exo5_enonce.webp)

**Cahier des charges**

Exo5 valide: 1 incrementation par appui sur `go`, avec anti-rebond 20 ms (`clk = 50 MHz`).  
Le compteur doit etre incremente chaque fois que le bouton **go** est active.  
Pour eviter les rebonds du bouton, le temps d'appui minimum valide est de 20 ms.

Remarque: une incrementation par appui.

Principe:
- Une MAE detecte l'appui.
- Un timer 20 ms valide que le bouton est bien stable.
- La MAE genere une impulsion `go_compte` d'un seul cycle d'horloge.
- Le compteur incremente uniquement sur cette impulsion.

Conclusion: une seule incrementation par appui, meme si le bouton reste appuye.

**Ce qu'il faut observer (validation Exo5)**
- Si on appuie une fois sur `go` (meme longtemps), `dout` fait +1 une seule fois.
- Les rebonds (impulsions rapides < 20 ms) sont ignores.

Fichiers a coder:
- `compteur_en`: compteur 4 bits incremente par impulsion (enable)
- `mae_go_20ms`: MAE + timer 20 ms + impulsion `go_compte`
- `exo5`: top MAE + compteur

![Exercice 5 - Avant simulation](priseEnMain/doc/exo5_avant_sim.JPG)

`idle` = etat d'attente / repos.

**Pour 20 ms**

![Exercice 5 - Affichage 20 ms](priseEnMain/doc/exo5_affiche_20ms.JPG)

---

## Exercice 6

Realiser le SOPC `sopc_compteur`, puis effectuer un test experimental sur carte DE0-Nano.

**Conception des SOC/SOPC (Platform Designer)**

**Utilisation de Platform Designer pour la conception de SOPC (System On Programmable Chip)**

<<<<<<< HEAD
Developpement materiel (HARD) / developpement logiciel (SOFT):
- Q18 + Platform Designer
- NIOS II (processeur softcore)
- (Q11 + SOPC Builder)

**Platform Designer** permet de concevoir des microcontroleurs specifiques a une application.  
Ces microcontroleurs comportent une partie processeur (softcore NIOS II), des peripheriques (PIO, timers, UART, USB, composants proprietaires, etc.) et de la memoire.  
La memoire peut etre embarquee dans le FPGA (RAM/ROM on chip) ou externe.

La partie microprocesseur est le softcore NIOS II d'Intel, processeur 32 bits declinable en trois versions: economique, standard, rapide.  
La version economique utilise le moins de ressources FPGA. Il est egalement possible d'integrer d'autres types de processeurs si leurs modeles sont disponibles (VHDL, Verilog, etc.).

La creation d'une application SOPC comprend les etapes suivantes:
1. Creation du composant materiel (processeur + peripheriques) dans l'environnement Quartus II.
2. Simulation eventuelle avec l'outil ModelSim.
3. Telechargement dans le composant FPGA (configuration) via Quartus II.
4. Creation du logiciel dans l'environnement NIOS2IDE, telechargement dans le FPGA et debogage.

**Partie 2: Developpement logiciel**  
Statut: VALIDE [OK].

---

## Partie 3

**Integration d'un composant proprietaire**

![Partie 3 - PWM](priseEnMain/doc/pwm.webp)
=======
**Partie 2 : Développement logiciel**
*Hello world et PWM*

hello world -> VALIDE [OK]

---

## Partie 3 : 
lien : https://chief-violin-c20.notion.site/TP-VHDL-Codesign-2025-45ad154132b3417b96d6bfab48f48d36

**Intégration d’un composant propriétaire**
![alt text](priseEnMain/doc/pwm.webp)

PWM -> VALIDE [OK]

ajoute photo tel

---
## Spécifications circuit acquisition vitesse vent
![alt text](priseEnMain/doc/anemometre.JPG)

**Top Level**
![alt text](priseEnMain/doc/topLevelAnemo.png)
photo tel

**MAE**
<!-- ![alt text](priseEnMain/doc/maePouranemometre.png) -->

![alt text](priseEnMain/doc/mae_anomemtre.png)

![alt text](priseEnMain/doc/mae1.png)
![alt text](priseEnMain/doc/mae2.png)

>>>>>>> refs/remotes/origin/main

---

## Outils utilises
- Quartus Prime 18
- ModelSim
- Carte FPGA DE0-Nano


## Auteur
DBIBIH Oussama