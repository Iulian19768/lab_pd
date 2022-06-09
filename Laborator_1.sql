
CREATE DATABASE Exemplu_4LF413;
USE Exemplu_4LF413;

CREATE TABLE Ex1_Matei(
coloana_a int 
);

CREATE INDEX a
ON Ex1_Matei (coloana_a);

ALTER TABLE Ex1_Matei
ADD coloana_b varchar(20);

ALTER TABLE Ex1_Matei
DROP COLUMN coloana_b;

ALTER TABLE Ex1_Matei
ADD coloana_b varchar(20);

CREATE INDEX b
ON Ex1_Matei (coloana_b);

ALTER TABLE Ex1_Matei
ADD CHECK (coloana_a < 1);

ALTER TABLE Ex1_Matei
DROP COLUMN coloana_b;

ALTER TABLE Ex1_Matei
ADD coloana_b int NOT NULL;

ALTER TABLE Ex1_Matei
ADD PRIMARY KEY (coloana_b);

ALTER TABLE Ex1_Matei
ADD coloana_c int;

ALTER TABLE Ex1_Matei
ADD coloana_d DECIMAL(6,3) DEFAULT (0.081);

SELECT coloana_a,coloana_b FROM Ex1_Matei
