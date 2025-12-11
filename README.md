# CodesignCESI

## Link : 
https://chief-violin-c20.notion.site/TP-VHDL-Codesign-2026-2be3b9c822568011b904e0d58f24585e

***Prise en main de Quartus 18*** 
[OK]

***Exercice 1 :*** Faire le programme VHDL d’un compteur de 0 à 15 et le simuler.
Un programme conteur + un test bench [OK]

***Exercice 2 :*** Modifier le programme pour que le comptage soit de 0 à 9 et le simuler, si simulation OK test expérimental sur la carte DE0 Nano — Remarque ? . (Clk_50Mhz est la fréquence du Quartz présent sur la carte)
On laisse le meme testBench pour les compteur015 et compteur09
Avant :
if count = "1111" then   -- 15
    count <= (others => '0');
Apres :
if count = "1001" then   -- 9
    count <= (others => '0');

***Exercice 3 :*** Réalisation d’un compteur synchrone 0 - 9 avec un temps de comptage de 1s.
CE quil faut faire est d'ajouter un diviseur d'horloge 50 MHz → 1 Hz