# Poizvedbe se nanašajo na tabelo zaposlenih (ang. Employee)

# Iz tabele zaposleni izpiši vsa imena BREZ PODVAJANJA.
SELECT distinct FirstName
FROM Employee e ;
# Iz tabele zaposleni izpiši vse priimke BREZ PODVAJANJA.
SELECT distinct LastName
FROM Employee e ;
# Iz tabele zaposleni izpiši vsa imena in priimke, priimki naj bodo urejeni v padajočem vrstnem redu.
SELECT FirstName, LastName
FROM Employee e 
ORDER BY LastName;
# Iz tabele zaposleni izpiši vsa imena in priimke. Primke uredi v naraščajočem vrstnem redu.
SELECT FirstName, LastName
FROM Employee e 
ORDER BY LastName desc;
# Iz tabele zaposleni izpiši vsa imena, priimek in starosti, starosti uredi v naraščajočem vrstnem redu.
SELECT FirstName, LastName
FROM Employee e 
ORDER BY LastName;
# Iz tabele zaposleni izpiši vsa imena, priimek in starosti, starosti uredi v padajočem vrstnem redu.
SELECT FirstName, LastName, TIMESTAMPDIFF(YEAR, BirthDate, CURDATE()) AS age
FROM Employee e 
ORDER BY age desc;
# Iz tabele zaposleni izpiši samo prvih 5 zapisov.
SELECT *
FROM Employee e 
LIMIT 5;
# Iz tabele zaposleni izpiši vsa imena in priimeke, uredi jih po imenih IN priimkih padajoče. (Zakaj to ni možno?)
##KER SE NE UJEMAJO PRIIMKI IN IMENA 
# Iz tabele zaposleni izpiši vsa imena in priimeke, uredi jih po imenih padajoče. Če naletimo na dve enaki imeni, pa jih (znotraj enakih imen) uredi še po priimkih padajoče.
SELECT FirstName, LastName
FROM Employee e 
ORDER BY FirstName desc, LastName desc;


#namigi
# za omejitev števila izpisov z MySQL dodamo na koncu SQL stavka besedo LIMIT št-vrstic
# starost je potrebno izračunati - lahko si pomagamo s funkcijo YEAR(BirthDate), ki poda samo letnico iz datuma rojstva; to lahko potem enostavno odštejemo od števila 2020

# nalogo oddajte tako, da je v besedilu tudi besedilo naloge, rešitve (sql stavke) date pod ustrezno navodilo/komentar