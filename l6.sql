
create table Numere(
	ID_rand int constraint pk_numere primary key,
	a decimal(4,3),
	b decimal(4,3),
);
insert into Numere (ID_rand,a,b)
	values(1,5,6);
insert into Numere (ID_rand,a,b)
	values(2,8,-6);
insert into Numere (ID_rand,a,b)
	values(3,0,-3);
insert into Numere (ID_rand,a,b)
	values(4,-5,0);
insert into Numere (ID_rand,a,b)
	values(5,-2,6);
insert into Numere (ID_rand,a,b)
	values(6,-3,-9);
insert into Numere (ID_rand,a,b)
	values(7,8,6.123);
insert into Numere (ID_rand,a,b)
	values(8,1.862,6);
insert into Numere (ID_rand,a,b)
	values(9,-1.862,6);
insert into Numere (ID_rand,a,b)
	values(10,-1.862,-6.213);
insert into Numere (ID_rand,a,b)
	values(11,-1.862,-2.234);

select abs(a),abs(b) from Numere;
select max(ceiling(b)),min(floor(b)) from Numere;
select degrees(a),radians(a) from Numere;
select asin(radians(a)),sin(radians(a)),acos(radians(a)),cos(radians(a)),atan(radians(a)),tan(radians(a)),cot(radians(a)) from Numere
	where a>0;
select power(exp(1),a) from Numere;
select log(a) from Numere
	where a>0;
select power(a,b) from Numere
	where a>0;
select sign(a),sign(b) from Numere 
	where a>0;
select sqrt(a) from Numere
	where a>0;
select getdate();
select datepart(month,getdate()),datename(month,getdate());
select datediff(year,DATA_INCEPUT,getdate()) from STUDENT;
select dateadd(day,3,Data_inceput) from Student;
--Part 2
select upper(Nume) from Student;
select lower(Nume) from Student;
select Nume+' '+ Prenume + ' ' + cast(Data_inceput as varchar) + ' ' + cast(Data_sfarsit as varchar) from Student
	where CodS = '005';
select left(Nume,4) from Student
	order by Nume;
select substring(Nume,len(Nume)-2,3) from Student
	order by Nume;
select replace(Nume,substring(Nume,1,1),'ST') from Student
	where substring(Nume,1,1)='B';
select len(Nume) from Student;
select char(Taxa) from Note;
select convert(varchar,getdate(),112);
select Nume,left(Prenume,1) from Student
	order by Nume;
select rtrim(Nume) + ',' + space(10) + ltrim(Prenume) from Student order by Nume;
select left(Nume,1),ascii(Nume) from Student;
select replicate(Prenume,2) from Student
	order by Prenume;
select reverse(Prenume) from Student;
select stuff(Prenume,2,3,'abc') from Student;