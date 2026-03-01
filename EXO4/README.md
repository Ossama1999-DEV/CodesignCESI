# Codesign - CESI

## Support de TP

[![VHDL](https://img.shields.io/badge/Language-VHDL-orange)](https://www.intel.com/)
[![Status](https://img.shields.io/badge/Status-Valid%C3%A9-green)](https://)

> 📚 [Support de cours - Notion](https://chief-violin-c20.notion.site/TP-VHDL-Codesign-2026-2be3b9c822568011b904e0d58f24585e)

## Exercice 4

Le testbench verifie le bon fonctionnement de la machine a etats en testant:

![Exercice 4 - Schema]( /doc/image.png)

- le reset,
- les transitions entre `etat1` et `etat2`,
- le maintien dans un etat lorsque l'entree ne correspond pas a une transition valide.

Il valide egalement la priorite du reset, y compris lorsqu'il est applique pendant un changement d'etat, et confirme **que la sortie `out1` depend uniquement de l'etat present (machine de Moore)**.

Dans le testbench:

![Exercice 4 - Simulation]( /doc/mae_simulation_prof.png)
![Exercice 4 - Verification]( /doc/mae_verif_prof.JPG)

```vhdl
constant clk_period : time := 20 ns;

ck_tb <= '0'; wait for clk_period/2;
ck_tb <= '1'; wait for clk_period/2;
```

Donc:

- Periode = 20 ns
- Frequence = 1 / 20 ns = 50 MHz

## Outils utilises

- Quartus Prime 18
- ModelSim
- Carte FPGA DE0-Nano

## Auteur

DBIBIH Oussama
