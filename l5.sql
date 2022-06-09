+use SITUATIE;
select count(Taxa) as Numar_studenti from Note
	where Taxa is not null;

select sum(Taxa) as Suma_taxelor from Note;

select sum(Taxa) as Suma_taxelor from Student inner join Note on Student.CodS=Note.CodS
	where Student.Nume = 'Radu' and Student.Prenume = 'Tiberiu';
select avg(Taxa) as Media_taxelor from Note;

select Student.Nume, count(Nota) as Numar from Student INNER JOIN [Note] on Student.CodS=Note.CodS
	group by Student.Nume;

select sum(Taxa) as Suma_taxelor, avg(Taxa) as Media_taxelor from Student inner join Note on Student.CodS=Note.CodS;

select avg(Taxa) as Valoarea_medie_a_taxelor_Radu_Tiberiu from Note inner join Student on Note.CodS=Student.CodS 
	where Student.Nume='Radu' and Student.Prenume='Tiberiu';


select  distinct top 1 with TIES Student.nume, Student.prenume, Note.Taxa as Max_taxa from Student INNER JOIN [Note] on Student.CodS = Note.CodS
	order by Taxa desc;
select *,Taxa*1.19 as Taxa_cu_TVA from Note;

select Nume, Prenume, avg(Taxa) as Medie_taxe from Student INNER JOIN [Note] on Student.CodS = Note.CodS
	group by Nume,Prenume
	order by Medie_taxe desc;

select top 1 Student.Nume, Student.Prenume, avg(Note.Nota) as Media_notelor from Student INNER JOIN [Note] on Student.CodS = Note.CodS
	group by Student.Nume, Student.Prenume
	order by avg(Note.Nota) desc;

select Nume, Prenume, avg(Taxa) as Medie_taxe from Student INNER JOIN [Note] on Student.CodS = Note.CodS
	where Taxa is not null
	group by Nume,Prenume
	order by Medie_taxe desc;
