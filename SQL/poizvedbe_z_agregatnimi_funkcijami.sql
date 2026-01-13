Izvedite spodnje poizvedbe. Uporabite SELECT stavke, kjer v imenih stolpcev uporabite agregatne funkcije:

MIN

Vrne najmanjšo vrednost v stolpcu

MAX

Vrne največjo vrednost v stolpcu

SUM

Vrne vsoto numeričnih vrednosti v stolpcu

AVG

Vrne povprečno vrednost stolpca

COUNT

Vrne celotno število vrednosti v stolpcu

COUNT(*)

Vrne število vrstic v tabeli


# Izpiši znesek najmanjše plače v mestu 'New York'.
Select MIN(Salary)
from Employee2 e 
WHERE e.City like "New York";
# Kdaj se je zgodila prva zaposlitev v New Yorku?
Select MIN(Start_Date)
FROM Employee2 e
Where City like "New York"
LIMIT 1;
# Izpiši datum prve zaposlitve v Torontu.
Select MIN(Start_Date)
FROM Employee2 e
Where City like "Toronto"
LIMIT 1;
# Izpisi datum zadnje zaposlitve v Torontu.
Select Start_Date
FROM Employee2 e
Where City like "Toronto"
Order by e.Start_Date desc
LIMIT 1;
# Izpiši vse osebe za katere nimamo podatka o plači.
Select First_Name, Last_Name, e.Salary 
From Employee2 e 
where e.Salary is null;
# Izpiši vsa mesta za katere nimamo podatkov o plačah.
Select distinct City, Salary
FROM Employee2 e 
where e.Salary  is null;s sestanek, ampak mi ne uspe in vam zato nisem niti pisala. Me pa zanima kako ste kej s časom torek/sreda zvečer?

# Vse zgornje poizvedbe se nanašajo na novo tabelo in podatke, ki jih morate v vaši bazi najprej ustvariti. Poženite spodnjo skripto
create table Employee2(
ID VARCHAR(40),
First_Name VARCHAR(40),
Last_Name VARCHAR(40),
Start_Date DATE,
End_Date DATE,
Salary int,
City VARCHAR(40),
Description VARCHAR(40)
);

# format datuma v podatkih je YYYY/MM/DD

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description)
values ('01','Jason', 'Martin', '1996/07/25', '2006/07/25', 1234.56, 'Toronto', 'Programmer');

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description)
values('02','Alison', 'Mathews','1976/03/21','1986/02/21', 2234.78, 'Vancouver', 'Tester');

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description)
values('03','James', 'Smith', '1978/12/12','1990/03/15', 2324.78, 'Vancouver','Tester');

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description)
values('04','Celia', 'Rice', '19821024', '19990421', 3334.78, 'Vancouver','Manager');

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description)
values('05','Robert', 'Black', '19840115','19980808', 4334.78, 'Vancouver','Tester');

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description)
values('06','Linda', 'Green', '19870730','19960104', 5334.78,'New York', 'Tester');

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description)
values('07','David', 'Larry', '19901231','19980212', 6334.78,'New York', 'Manager');

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, Salary, City, Description)
values('08','James', 'Cat', '19960917','20020415', 7334.78,'Vancouver', 'Tester');

insert into Employee2(id, first_name, last_name, start_date, end_date, city, description)
values('09','Nick', 'Hill', '19990907','20030415', 'London', 'Tester');

insert into Employee2(ID, First_Name, Last_Name, Start_Date, End_Date, City, Description)
values('10','Lisa', 'Mice','19841024','19970421', 'London','Manager');

insert into Employee2(id, first_name, last_name, start_date, end_date, City, description)
values('11','Monika', 'Bell', '19821114','19990421', 'London','Programmer');

insert into Employee2(id, first_name, last_name, start_date, end_date, City, description)
values('12','Ema', 'Bush', '19811111','19980421', 'Paris','Programmer');

Aktivnost se bo označila kot opravljena, ko bo pregledana s strani profesorja.