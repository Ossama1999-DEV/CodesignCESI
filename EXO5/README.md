# Codesign - CESI

## Support de TP

[![VHDL](https://img.shields.io/badge/Language-VHDL-orange)](https://www.intel.com/)
[![Status](https://img.shields.io/badge/Status-Valid%C3%A9-green)](https://)

> 📚 [Support de cours - Notion](https://chief-violin-c20.notion.site/TP-VHDL-Codesign-2026-2be3b9c822568011b904e0d58f24585e)

## Exercice 5

Programmer, simuler et tester le compteur asynchrone suivant:

![Exercice 5 - Enonce]( /doc/exo5_enonce.webp)

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

![Exercice 5 - Avant simulation]( /doc/exo5_avant_sim.JPG)

`idle` = etat d'attente / repos.

**Pour 20 ms**

![Exercice 5 - Affichage 20 ms]( /doc/exo5_affiche_20ms.JPG)

## Outils utilises

- Quartus Prime 18
- ModelSim
- Carte FPGA DE0-Nano

## Auteur

DBIBIH Oussama
