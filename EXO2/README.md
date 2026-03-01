# Codesign - CESI

## Support de TP

[![VHDL](https://img.shields.io/badge/Language-VHDL-orange)](https://www.intel.com/)
[![Status](https://img.shields.io/badge/Status-Valid%C3%A9-green)](https://)

> 📚 [Support de cours - Notion](https://chief-violin-c20.notion.site/TP-VHDL-Codesign-2026-2be3b9c822568011b904e0d58f24585e)

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

![alt text](../doc/compteur_de_0_a_9.JPG)

Validation:

- Meme testbench utilise pour les compteurs 0-15 et 0-9.
- Simulation validee avant test experimental.

## Outils utilises

- Quartus Prime 18
- ModelSim
- Carte FPGA DE0-Nano

## Auteur

DBIBIH Oussama
