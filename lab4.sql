SELECT CODS, CURS, NOTA, AN, TAXA FROM NOTE;

ALTER TABLE NOTE
ADD TAXA DECIMAL(7,2);

SELECT CODS, NUME, PRENUME, DATA_INCEPUT, DATA_INCEPUT, SITUATIE, INV, SEX, JUD FROM STUDENT
WHERE PRENUME='ANDREI';

SELECT CODS, NUME, PRENUME, DATA_INCEPUT, DATA_INCEPUT, SITUATIE, INV, SEX, JUD FROM STUDENT
WHERE PRENUME<>'ANDREI';

SELECT CODS, NUME, PRENUME, DATA_INCEPUT, DATA_INCEPUT, SITUATIE, INV, SEX, JUD FROM STUDENT
WHERE PRENUME='ANDREI' OR PRENUME ='CRISTINA';

SELECT NUME, PRENUME FROM STUDENT 
WHERE NUME LIKE '%A';

SELECT NUME, PRENUME FROM STUDENT
WHERE NUME LIKE 'B%'

SELECT NUME, PRENUME FROM STUDENT 
WHERE NUME LIKE '%T'

SELECT S.NUME, S.PRENUME FROM STUDENT AS S INNER JOIN NOTE AS N ON 
S.CODS=N.CODS WHERE TAXA BETWEEN 20 AND 40;

SELECT S.NUME, S.PRENUME FROM STUDENT AS S INNER JOIN NOTE AS N ON
S.CODS =N.CODS WHERE TAXA >40 OR TAXA<20;









