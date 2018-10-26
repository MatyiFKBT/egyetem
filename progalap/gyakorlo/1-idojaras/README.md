# Időjárás előrejelzés

Egy időjárás előrejelzésben megkaptuk a következő N nap várható minimális és maximális hőmérsék-
letét.

Írj programot, amely

1. azon napok számát, amikor fagyi fog; 1
2. azt a napot, ahol a legnagyobb a különbség a várható minimális és maximális hőmérséklet kö-
    zött (ha több ilyen van, akkor a legkisebb sorszámút); 1
3. egy napot, amikor a napi maximum kisebb az előző napi minimumnál (ha több ilyen van, ak-
    kor a legkisebb sorszámút; - 1 - et, ha nincs ilyen nap); 1
4. azon napok számát és sorszámait, ahol fagyni is fog és olvadni is (a sorszámokat növekvő
    sorrendben) egy-egy szóközzel elválasztva! 1 + 3

## Bemenet

A _standard bemenet_ első sorában a napok száma, alatta soronként egy-egy nap várható
legkisebb és legnagyobb hőmérséklete (egész számok).

## Kimenet

A _standard kimenetre_ minden részfeladat eredménye előtt egy-egy, egyetlen # karaktert
tartalmazó sort kell kiírni, amelyet a részfeladat eredményét tartalmazó egy vagy több sor követ.
Ha egy részfeladatot nem tudsz megoldani, akkor csak a # karaktert kell kiírni. Ha a kimenet
formailag nem felel meg ennek a követelménynek (pl. kevesebb/több # karaktert ír ki) akkor
„Output formátum hiba” üzenetet ad az értékelő (akkor is, ha van helyes részfeladat megoldás).

**1. részfeladat** : azon napok számát kell kiírni, amikor fagyi fog!
**2. részfeladat** : azt a napot kell kiírni, ahol a legnagyobb a különbség a várható minimális és maximá-
lis hőmérséklet között (ha több ilyen van, akkor a legkisebb sorszámút)!
**3. részfeladat** : egy olyan napot kell kiírni, amikor a napi maximum kisebb az előző napi minimumnál
(ha több ilyen van, akkor a legkisebb sorszámút; - 1 - et, ha nincs ilyen nap)!
**4. részfeladat** : azon napok számát és sorszámait kell kiírni, ahol fagyni is fog és olvadni is (a sorszá-
mokat növekvő sorrendben) egy-egy szóközzel elválasztva!

## Példa

```
Bemenet 	Kimenet
6 		#
- 5 5 		4
0 10 		#
- 5 - 3 	1
- 5 0 		#
2 10 		3
10 13 		#
		2 1 2
```
## Korlátok

Időlimit: 0. 1 mp.

Memórialimit: 32 MiB


Évfolyam ZH

2. oldal

## Értékelés

### Értékelés 10 teszt-adatfájl alapján:

Összpont: **10*( 1 + 2 + 3 + 4 )=10*1 0 =1 0 0 pont**

```
Alsópont: 40 55 70 85
```
```
Jegy: 2 3 4 5
```

