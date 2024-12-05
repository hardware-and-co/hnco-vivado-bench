Hardware & Co - Benchmark Synthèse Vivado
=========================================

Benchmark de synthèse hardware utilisé pour les tests CPU de [Hardware & Co](https://hardwareand.co/). Lance une synthèse logique suivi du placement / routage du [CVA6](https://cva6.readthedocs.io) sur une [AMD ZCU104](https://www.xilinx.com/products/boards-and-kits/zcu104.html). Nécessite le paquet (Ubuntu/Debian) `libtinfo5` ainsi que [riscv-non-elf-gcc-xpack](https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack).

## Utilisation
`./bench.sh`

## Sortie
Lire les dernières lignes produites par la commande, de format :
	real    XmXXXXXXs
	user    XmXXXXXXs
	sys     XmXXXXXXs

## Note
- La sortie est en temps real/user/sys, avec :
	- real : temps de compilation.
	- user : somme sur tous les threads des temps passé dans le programme en mode utilisateur.
	- sys : somme sur tous les threads du temps passé en mode noyaux (pour les appels systèmes).

Copyright © 2024 Nicolas Derumigny.
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the COPYING file for more details.
