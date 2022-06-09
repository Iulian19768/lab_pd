use SITUATIE1;
select * from Student;
select * from Note;

select Curs from Note inner join Student on Student.CodS=Note.CodS
	where Student.Nume = 'Radu' and Student.Prenume = 'Tiberiu';

select Nume from Student 
	where Sex='F' and Situatie='B' and Inv='Z';

select Nume from Student
	where Sex='B'and Situatie='B' or Sex='F' and Data_inceput='2001-10-01';

select Nume from Student
	where Data_inceput='2001-10-01' or Situatie='B';

select count(Nume), An from Student inner join Note on Student.CodS=Note.CodS
	group by An;

select Nume,Prenume,avg(Nota) as Media from Student inner join Note on Student.CodS=Note.CodS
	group by Nume,Prenume;

select Nume,Prenume,avg(Nota) as Media from Student inner join Note on Student.CodS=Note.CodS
	group by Nume,Prenume
	having avg(Nota)>8;

select Nume,Prenume,Jud from Note inner join Student on Student.CodS=Note.CodS
	where Note.CodS not in (select CodS from Student where Jud='IS');

select distinct Nume,Prenume,Nota from Student inner join Note on Student.CodS=Note.CodS
	where Nota>any(select Nota from Note);

select Nume,Taxa from Student inner join Note on Student.CodS=Note.CodS
	where Taxa in(select max(Taxa) from Note);

select Nume,Prenume,Taxa from Student inner join Note on Student.CodS=Note.CodS
	where Taxa in(select Taxa from Note where Taxa=35.50);

select Curs,Nota from Note 
	where CodS=(select CodS from Student where Nume='Radu' and Prenume='Tiberiu');

select Curs,Nota from Note 
	where Nota<(select max(Nota) from Note where CodS='005');

select Nume, Prenume, Curs, Nota from Student inner join Note on Student.CodS=Note.CodS
	where Nota = any(select min(Nota) from Note group by CodS)

select Nume, Prenume, Curs, Nota from Student inner join Note on Student.CodS=Note.CodS
	where Nota<=all(select Nota from Note);