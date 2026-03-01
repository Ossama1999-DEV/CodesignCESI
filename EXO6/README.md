# Codesign - CESI
## Support de TP

[![VHDL](https://img.shields.io/badge/Language-VHDL-orange)](https://www.intel.com/)
[![Status](https://img.shields.io/badge/Status-Valid%C3%A9-green)](https://)

> 📚 [Support de cours - Notion](https://chief-violin-c20.notion.site/TP-VHDL-Codesign-2026-2be3b9c822568011b904e0d58f24585e)

---

## 📋 Exercice 6 : SOPC Compteur

### Objectif

Concevoir le SOPC `sopc_compteur` avec **Platform Designer**, puis valider son fonctionnement par un test expérimental sur carte **DE0-Nano**.

---

## 🛠️ Contexte technique

Cet exercice illustre une démarche complète de **codesign** :

| Composant | Description |
|-----------|-------------|
| **HARD** | Conception matérielle du système embarqué |
| **SOFT** | Développement logiciel exécuté par le processeur softcore |

### Éléments mobilisés

- **Quartus Prime 18** + Platform Designer
- **NIOS II** (processeur softcore)
- **Quartus 11** + SOPC Builder (référence)

---

## 🔧 Rôle de Platform Designer

**Platform Designer** permet de concevoir des microcontrôleurs spécifiques à une application.

Ces microcontrôleurs intègrent :

- ✅ Une unité de calcul (NIOS II)
- ✅ Des périphériques (PIO, timers, UART, USB, composants propriétaires, etc.)
- ✅ De la mémoire

### Types de mémoire

La mémoire peut être :

| Type | Description |
|------|-------------|
| **On-chip** | RAM/ROM embarquée dans le FPGA |
| **Externe** | Mémoire externe au FPGA |

---

## ⚙️ Processeur NIOS II

Le **NIOS II** d'Intel est un processeur **softcore 32 bits**, disponible en trois variantes :

| Variante | Caractéristiques |
|----------|------------------|
| Économique | Plus sobre en ressources FPGA |
| Standard | Équilibre performances/ressources |
| Rapide | Performances maximales |

> 💡 La version économique est la plus sobre en ressources FPGA.  
> L'intégration d'autres processeurs reste possible si leurs modèles sont disponibles (VHDL, Verilog, etc.).

---

## 📈 Démarche de réalisation

1. **Création de l'architecture matérielle** (processeur + périphériques) sous Quartus/Platform Designer
2. **Simulation fonctionnelle** si nécessaire avec ModelSim
3. **Programmation du FPGA** via Quartus Prime
4. **Développement et chargement du logiciel** dans NIOS II IDE, puis débogage

---

## ✅ Validation

| Partie | Statut |
|--------|--------|
| Partie 2 - Développement logiciel | **VALIDÉ [OK]** ✅ |

---

## 🧰 Outils utilisés

- 🖥️ Quartus Prime 18
- 🧪 ModelSim
- 🔲 Carte FPGA DE0-Nano

---

## 👤 Auteur

**DBIBIH Oussama**
