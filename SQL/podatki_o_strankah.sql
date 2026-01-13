#  Podatki o strankah -> uporabim tabelo Customer
#  Napiši ukaz s katerim izpišeš vsa imena in priimke.
SELECT FirstName, LastName 
FROM Customer c;
#  Izpiši vsa imena strank, katerih ime se začne na črko 'J' ali na črko 'M'.
SELECT FirstName
FROM Customer c 
WHERE c.FirstName like 'P%' OR c.FirstName  like 'M%'; 
#  Izpiši vsa imena strank, katerih ime se začne na črko 'J' IN na črko 'M'. (Je to možno?)
SELECT distinct FirstName
FROM Customer c 
WHERE c.FirstName like 'P%' AND c.FirstName  like 'M%'; 
#  Napiši ukaz s katerim izpišeš vsa imena ki imajo črko 'i' na predzadnjem mestu.
SELECT distinct FirstName
FROM Customer c 
WHERE c.FirstName like '%i_';
#  Napiši ukaz s katerim izpišeš vsa imena ki se začnejo z črko 'J' IN imajo črko 'n' na tretjem mestu.
SELECT distinct FirstName
FROM Customer c 
WHERE c.FirstName like 'J_n%';
#  Napiši ukaz s katerim izpišeš vsa imena ki se začnejo z črko 'J' ALI imajo črko 'n' na tretjem mestu.
SELECT distinct FirstName
FROM Customer c 
WHERE c.FirstName like 'J%' OR c.FirstName  like '__n%'; 
#  Izpiši vsa imena strank z ukazom ki odpravi podvajanja.
SELECT distinct FirstName 
FROM Customer c;
#  Izpiši vsa imena pri katerih je v imenu črka 'R' na tretjem.
SELECT distinct FirstName
FROM Customer c 
WHERE c.FirstName  like '__r%'; 
#  Izpiši ime in pošto, pošta naj bo izpisana v naraščajočem vrstnem redu.
SELECT FirstName, PostalCode
FROM Customer c 
ORDER BY c.PostalCode;
#  Izpiši ime in priimek, ime IN priimek naj bosta izpisana v padajočem vrstnem redu. Bi to šlo?
NE
#  Izpiši ime in priimek, ime naj bo izpisano v padajočem vrstnem redu, priimek pa v naraščajočem vrstnem redu. Bi to šlo?
NE


#Namigi

#    polja, ki vsebujejo nize, primerjamo z operatorjem like: primer - "select FirstName from Customer where FirstName like 'P%';" izpiše vsa imena, ki se pričnejo na P
#    % pomeni katerikoli niz
#    _ pomeni katerikoli en znak (vsaj v ... deluje tudi ? )
#    pogoje lahko združujemo z OR ali AND; prvi pomeni ALI, drugi IN; primer: select FirstName from Customer where State like 'CA' OR State like 'SP'
#    če nas zanimajo samo različne vrstice, uporabimo DISTINCT v smislu select distinct FirstName from ...
#    urejenost definiramo na koncu z "order by" primer "Select FirstName, Lastname from Customer order by FirstName ASC"