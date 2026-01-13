# Izpišite spodnje poizvedbe. Poizvedbe od 3 dalje se nanašajo na tabelo Employee.

# Izpiši trenutni datum
SELECT CURDATE();
# Izpiši dan v tednu za trenutni datum
SELECT DATE_FORMAT(CURDATE(), "%a");
# Izpiši ime, priimek, datum in ime dneva v tednu, v katerem je bil zaposleni rojen
SELECT FirstName, LastName, DATE_FORMAT(BirthDate, "%a") as RojenDan
FROM Employee e;
# Izpiši ime, priimek in starost ob zaposlitviojendan
SELECT FirstName, LastName, TIMESTAMPDIFF(YEAR, BirthDate, HireDate) AS StarostObZaposlitvi
FROM Employee e;
# Izpiši ime, priimek in datum rojstva v obliki LLLL MM DD
SELECT FirstName, LastName, DATE_FORMAT(BirthDate, "%Y %m %d") as BirthDate
FROM Employee e;


# Namigi:
# uporabite funkcije za mysql - funkcije, format
# pri prvih dveh podatkov ne pridobivate iz tabel, torej jih enostavno v sql stavku ne navedete