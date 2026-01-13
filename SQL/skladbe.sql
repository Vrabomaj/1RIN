# Poizvedbe se nanašajo na tabelo skladb (Tracks):

# izpišite vse skladbe, ki so daljše od 3 in krajše od 4 minut,
Select distinct Name, t.Milliseconds 
FROM Track t 
WHERE t.Milliseconds > 180000 and t.Milliseconds < 240000;
# izpišite pet najdaljših skladb (namig sortirajte po dolžini in omejite izpis na 5)
Select distinct Name 
From Track 
Order by Milliseconds descSelect Name 

Limit 5;
# izpišite vse skladbe, ki jih je spisal AC/DC
Select distinct Name, Composer
From Track t 
Where t.Composer like "AC/DC";
# izpišite skladbe za katerega nimamo vpisanega avtorja
Select distinct Name, t.Composer 
From Track t 
Where t.Composer is NULL;
# izpišite skladbe katerih ime je daljše od 20 znakov
Select Name, LENGTH(Name)
From Track
Where LENGHT(Name) > 20;
# koliko skladb nima skladatelja- izpišite poizvedbo in ugotovite je kakšna skladba dražja od 1 € ? poizvedba ...

# koliko skladb je napisal Miles Davis
Select Count(name)
From Track t 
where Composer like "Miles Davis";
# koliko je dolgo najdaljše ime skladbe?
SELECT MAX(LENGTH(Name))
FROM Track t ;
# koliko je dolgo najdaljše ime skladatelja?
Select Milliseconds
FROM Track t 
GRoup by Milliseconds desc
LIMIT 1;


# namigi:
# če polje nima vrednosti, ima dejansko vrednost NULL, kar pomeni, da lahko primerjavo izvedemo z uporabo te vrednosti, # # npr. Composer IS NULL, drži, ko polje Composer nima vrednosti
# za preverjanje dolžine imena uporabite funkcijo LENGTH(ime-stolpca)