DROP TABLE IF EXISTS koktel;
DROP TABLE IF EXISTS alkohol;



CREATE TABLE alkohol(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    naslov TEXT,
    vrste TEXT
); 

CREATE TABLE koktel(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    naslov TEXT,
    sastojci TEXT,
    info TEXT,
    slika TEXT,
    alkohol_id INTEGER,
    FOREIGN KEY (alkohol_id) REFERENCES id(alkohol)
);



INSERT INTO alkohol (naslov,vrste) VALUES(
   ' Votka ', 'Absolut, Grey Goose, Belvedere, Ketel One'
);

INSERT INTO alkohol (naslov,vrste) VALUES(
   ' Rum ', 'Bijeli rum: Bacardi Superior,
           Havana Club,
          Captain Morgan White Rum,
         Don Q Cristal,
         Mount Gay Eclipse Silver,
        Plantation 3 Stars,  ///////   Tamni rum:
       Appleton Estate Reserve Blend,
         Havana Club,
     Goslings Black Seal,
           Myers s Original Dark,
          Diplomatico Reserva Exclusiva,
        Ron Zacapa Centenario 23 ' 
);

INSERT INTO alkohol (naslov,vrste) VALUES(
   ' Tequila ', 'Jose Cuervo,
         Patron,
          Don Julio,
           Sauza,
         Espolon'
);
INSERT INTO alkohol (naslov,vrste) VALUES(
   ' Viski ', ' Jack Daniel s,
          Johnnie Walker,
          Jameson,
          Glenfiddich,
       Macallan'
);

INSERT INTO alkohol (naslov,vrste) VALUES(
   ' Gin ', ' Hendricks,
           Tanqueray,
           Bombay Sapphire,
          Beefeater,
          Plymouth'
);

INSERT INTO alkohol (naslov,vrste) VALUES(
   ' Vino ', ' Bijelo vino:  Chardonnay,
        Sauvignon Blanc,
       Riesling,
         Pinot Grigio,
        Gewurztraminer.//// Crno vino:
         Cabernet Sauvignon,
         Merlot,
          Pinot Noir,
         Syrah/Shiraz,
        Malbec'
);
INSERT INTO alkohol (naslov,vrste) VALUES(
   ' Likeri ', ' Baileys Irish Cream,
Amaretto,
Kahlua,
Grand Marnier,
Frangelico'
);

INSERT INTO alkohol (naslov,vrste) VALUES(
  ' Brandy ', ' Hennessy,
Courvoisier,
Remy Martin,
Martell,
Torres'
);





INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Mojito', 'Bijeli rum, svjeze iscijedeni sok od limete, listici svjeze mente, smedi secer, soda voda, led',
    ' U casu dodajte 6-8 listica svjeze mente i 2 zlicice smedeg secera. 
                 Lagano izgnjecite mentu kako biste oslobodili arome.
                 Dodajte 45 ml bijelog ruma i sok od pola limete.
                 Dodajte led do vrha case.
                 Prelijte sode vodom i lagano promijesajte. 
                 Ukrasite grancicom mente i kriskom limete. ',
                  '/static/mojito.jpg', 2
);


INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Daiquiri ', 'Bijeli rum, svjeze iscijedeni sok od limete, sirup od jagode, led',
    ' Dodajte bijeli rum, sok od limete i jednostavni sirup u shaker.
                Dodajte nekoliko kockica leda u shaker.
                 Stavite sirup od jagode.
                Dobro protresite shaker oko 10-15 sekundi kako bi se svi sastojci dobro izmijesali i ohladili.
                Uzmite casu za koktel i napunite je ledom.
                 Procijedite koktel iz shakera u casu, pazite da izdvojite led te stavite jagodu za dekoraciju. ',
                 '/static/daiquiri.jpg', 2 
);

INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Mai Tai ', 'Tamni rum, bijeli rum, svjeze iscijedjeni sok od limete, liker od narance, sirup od badema, svjeza menta',
    'Dodajte tamni rum, bijeli rum, svjeze iscijedjeni sok od limete, liker od narance i sirup od badema u shaker.
Dodajte led u shaker.
Dobro protresite shaker kako biste sve sastojke dobro izmijesali i ohladili.
Uzmite casu za koktel i napunite je ledom.
Procijedite koktel iz shakera u casu, pazite da izdvojite led i ostavite ga u shakeru.
Ukrasite koktel grancicom svjeze mente.
Dodatno mozete ukrasiti koktel kriskom ananasa ili narance, po zelji. ',
                 '/static/mai.jpg', 2
);

INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Sex on the beach  ', 'Votka,
                  brusnicni sok,
                  sok od breskve,
                  sok od narance,
                  sirup od grenadine,
                  led',
    'Dodajte 45 ml votke u casu.
Dodajte 45 ml brusnicnog soka u casu.
Dodajte 45 ml soka od breskve u casu.
Dodajte 45 ml soka od narance u casu.
Po zelji, dodajte mali splash sirupa od grenadine za dodatnu slatkocu.
Dodajte led u casu, napunjavajuci je do vrha.
Pazljivo promijesajte sastojke u casi.
Ukrasite koktel krisom narance ili visnjom na vrhu.',
                 '/static/se.jpg', 1
);


INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Margarita   ', 'Tequila,
sok od limete,
narancni liker,
led,
sol (koja ide na rub case),
kriska limete za ukras',
    'Pripremite casu za Margaritu tako da rub case prethodno prodjete kriskom limete, a zatim ga umocite u sol kako biste stvorili solni rub.
U shakeru ili staklenci, dodajte led.
Dodajte tequilu, sok od limete i narancni liker u shaker.
Dobro protresite sve sastojke nekoliko sekundi kako biste ih dobro ohladili i pomijesali.
Ulijte smjesu kroz cjediljku u pripremljenu casu s ledom.
Ukrasite koktel kriskom limete, ako zelite.',
                 '/static/marg.jpg', 3
);


INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Pina Colada ', 'Bijeli rum,
                  sok od ananasa, 
                  kokosovo mlijeko, 
                  led',
    'U blender stavite bijeli rum, ananas sok i kokosovo mlijeko.
Dodajte saku leda u blender.
Blendajte sve sastojke na visokoj brzini dok ne dobijete glatku teksturu.
Procijedite koktel u casu za koktel ili veliku casu za pice.
Ukrasite koktel kriskom ananasa ili komadicem kokosa.',
                 '/static/pina.jpg', 2
);

INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Martini ', 'Gin,
                  suhi vermut,
                  masline (ukras)',
    'U casu za mjesanje stavite led.
Dodajte gin i suhi vermut.
Lagano promijesajte mjesalicom za koktele dok se sastojci dobro ne sjedine i ohlade.
Procijedite koktel u casu za Martini.
Ukrasite koktel maslinom ili maslinovim stapicem.',
                 '/static/mar.jpg', 5
);


INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Negroni  ', 'Gin,
                  campari,
                  crveni slatki vermut,
                  narancina korica (za ukras)',
    'U casu napunjenu ledom stavite gin, Campari i crveni slatki vermut.
Lagano promijesajte sastojke pomocu zlicice kako bi se dobro sjedinili.
Procijedite koktel u casu za oldfashioned ili casu sa sirokim otvorom.
Ukrasite koktel narancinom koricom tako da je savijete i stavite na rub case.',
                 '/static/negroni.jpg', 8
);


INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Cosmopolitan ', 'Vodka,
                  liker od brusnice,
                  svjeze iscijedeni sok od limete,
                  cointreau',
    'Napunite casu ledom kako bi se ohladila.
U shakeru ili staklenoj posudi za mjesanje koktela, dodajte votku, narancasti liker, sok od brusnice i sok od limete.
Dodajte led u shaker ili posudu za mjesanje kako bi se svi sastojci dobro ohladili.
Dobro protresite shaker ili mjesajte sastojke u posudi nekoliko sekundi kako bi se sve dobro izmjesalo i ohladilo.
Odliti led iz case za martini i procijediti smjesu iz shakera u ohladenu casu.
Ukrasite koktel s kriskom limete tako da je postavite na rub case ili je stavite na vrh koktela.',
                 '/static/cosmo.jpg', 7
);



INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Cuba Libre ', 'Bijeli rum,
                  coca cola, 
                  limeta, 
                  led, 
                  kriska limete za ukras',
    'U visoku casu napunjenu ledom dodajte bijeli rum.
Iscijedite sok pola limete u casu. Mozete koristiti svjeze iscijeden sok ili pak gotovi sok od limete.
Dolijte gaziranu kolu preko ruma i limunovog soka.
Pazljivo promijesajte sastojke u casi kako bi se dobro sjedinili.
Opcionalno, mozete ukrasiti koktel kriskom limete, stavljajuci je na rub case ili je spustiti unutar koktela.',
                 '/static/cuba.jpg', 2 
);

INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Hugo  ', 'Pijenusac,
bezalkoholni sirup od bazge,
listovi mente,
kriska limuna,
led',
    'U visoku casu dodajte listove mente i kriske limuna.
Lagano pritisnite listove mente i limun kako bi oslobodili njihove arome.
Dodajte bezalkoholni sirup od bazge u casu.
Napunite casu ledom.
Polako ulijte pjenusac preko leda i sastojaka u casi.
Lagano promijesajte koktel zlicom kako bi se svi sastojci sjedinili.
Ukrasite koktel dodatnim listovima mente i kriskom limuna po zelji.',
                 '/static/hugo.jpg', 6
);


INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Aperol Spritz ', 'Aperol liker,
pijenusac,
gazirana voda,
naranca za ukras,
led',
    'Ulijte 90 ml pjenusca u casu.
Dodajte 60 ml Aperol likera.
Lagano promijesajte sastojke u casi.
Dodajte malo gazirane vode kako biste dopunili koktel prema svom ukusu.
Mozete dodati 30-60 ml gazirane vode, ovisno o tome koliko zelite osvjeziti koktel.
Ukrasite koktel kriskom narance. Mozete je staviti na rub case ili je spustiti unutar koktela.',
                 '/static/apero.jpg', 6
);


INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Campari Spritz ', 'Campari liker,
pijenusac,
gazirana voda,
naranca za ukras,
led',
    'Napunite casu s kockicama leda.
Ulijte 60 ml Campari likera u casu.
Dodajte 90 ml pjenusca u casu s Camparijem.
Pazljivo promijesajte sastojke u casi.
Dodajte malo gazirane vode kako biste dopunili koktel prema svom ukusu. Mozete dodati 30-60 ml gazirane vode, ovisno o tome koliko zelite osvjeziti koktel.
Ukrasite koktel kriskom narance. Mozete je staviti na rub case ili je spustiti unutar koktela.',
                 '/static/camp.jpg', 6
);



INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Blue Hawaiian ', 'Bijeli rum,
plavi curacao liker,
sok od ananasa,
kokosovo mlijeko,
kriska ananasa za ukrasavanje,
maraschino tresnja za ukrasavanje,
led',
    'U shakeru ili posudi za mijesanje koktela, dodajte led.
Dodajte 60 ml bijelog ruma u shaker.
Dodajte 30 ml plavog curacao likera u shaker.
Dodajte 120 ml soka od ananasa u shaker.
Dodajte 60 ml kokosovog mlijeka u shaker.
Dobro protresite smjesu nekoliko sekundi kako bi se svi sastojci sjedinili i ohladili.
U visoku casu napunjenu ledom, procijedite smjesu iz shakera.
Ukrasite koktel kriskom ananasa i maraschino tresnjom na vrhu.',
                 '/static/bl_hav.jpg', 2
);

INSERT INTO koktel (naslov,sastojci,info,slika,alkohol_id) VALUES(
   ' Blue Lagoon ', 'Votka,
plavi curacao liker,
sok od limuna,
gazirana limunada ili gazirana voda,
kriska limuna za ukrasavanje,
led',
    'Napunite casu kockicama leda.
U casu dodajte jednak omjer vodke i plavog curacao likera.
Dodajte malo svjeze iscijedenog soka od limuna u casu. Kolicinu prilagodite prema svom ukusu.
Lagano promijesajte sastojke u casu.
Dopunite koktel gaziranom limunadom ili gaziranom vodom do zeljene razine.
Ukrasite koktel kriskom limuna.',
                 '/static/bl_lag.jpg', 1
);












