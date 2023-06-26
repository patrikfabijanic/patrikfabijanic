# Shake&Make

## Opis projekta

"Shake&Make" je sofisticirana web aplikacija koja je posebno dizajnirana za barove i lokale, pružajući izuzetnu korist i olakšanje početnicima u barmenskoj karijeri. Ova aplikacija omogućava nevjerojatno jednostavno upravljanje koktelima i alkoholnim pićima, pomažući korisnicima da ostvare svoje kreativne vizije. Aplikacija pruža korisnicima mogućnost pregleda, stvaranja, ažuriranja i brisanja koktela i alkoholnih pića.

## Funkcionalnosti web servisa

### Osnovne funkcionalnosti:

Create koktel:  <br>
Stvaranje novih koktela unosom svih potrebnih informacija kao što su naslov, sastojci, informacije o koktelu i slika (opcionalno).   <br>
<br>
Read koktel: <br>
Čitanje koktela iz baze podataka, i mogućnost pregleda svih koktela u aplikaciji. <br>
<br>
Update koktel: <br>
Ažuriranje postojećih koktela promjenom njihovog naslova, sastojaka i informacija. <br>
<br>
Delete koktel: <br>
Mogućnost brisanja koktela koji više nisu potrebni u aplikaciji. <br>

<hr>

Create alkohol:  <br>
Mogućnost stvaranja novih alkoholnih pića unoseći naslov i informacije o piću. <br>
<br>
Read alkohol: <br>
Čitanje alkohola iz baze podataka, i mogućnost pregleda svih postojećih alkohola u aplikaciji. <br>
<br>
Update alkohol: <br>
Mogućnost izmijene postojećih informacija o alkoholnim pićima. <br>
<br>
Delete alkohol: <br>
Mogućnost brisanja alkohola koji više nisu potrebni u aplikaciji. <br>
<br>

## Struktura web aplikacije

Web aplikacija je organizirana kroz dvije povezane klase koje omogućuju upravljanje koktelima i alkoholima. 
Korisnici mogu dodavati nove koktele/alkohole, pregledavati postojeće koktele/alkohole, mijenjati podatke o odabranom koktelu/alkoholu te izbrisati koktel/alkohol. 

## Pokretanje web aplikacije
- Potrebno je preuzeti sve datoteke koje se nalaze na Github-u i spremiti ih u mapu.
- Otvoriti CMD i navigirati do mjesta gdje se nalaze spremljene datoteke.
- Pomoću naredbe: ```docker build -t shakeandmake/pis-flask:0.0.1.RELEASE . ``` kreirate docker image.
- Slijedeći korak je pokrenuti konteiner naredbom ```docker container run -d -p 3000:3000 shakeandmake/pis-flask:0.0.1.RELEASE```
- Nakon svih koraka otvoriti preglednik i unijeti adresu: ```localhost:3000```
