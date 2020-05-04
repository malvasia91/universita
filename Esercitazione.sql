create database Esercitazione;
use Esercitazione;

CREATE TABLE Dipartimento (
    Codice INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL
);

insert into Dipartimento (Codice,Nome)
values(100,'Informatica');

insert into Dipartimento (Codice,Nome)
values(101,'Giurisprudenza');

insert into Dipartimento (Codice,Nome)
values(102,'Economia');

insert into Dipartimento (Codice,Nome)
values(103,'Matematica');

insert into Dipartimento (Codice,Nome)
values(104,'Ingegneria');


CREATE TABLE Sede (
    Codice INT PRIMARY KEY AUTO_INCREMENT,
    Indirizzo VARCHAR(50),
    Citta VARCHAR(50)
);

insert into Sede (Codice,Indirizzo,Citta)
values(1000,'Via Pendio la Riccia, 5','Taranto');

insert into Sede (Indirizzo,Citta)
values('Piazza Umberto I, 1','Bari');

insert into Sede (Indirizzo,Citta)
values('Via Giuseppe Verdi, 8','Torino');

insert into Sede (Indirizzo,Citta)
values('Lungarno Antonio Pacinotti, 43','Pisa');

insert into Sede (Indirizzo,Citta)
values('Via Ostiense, 159','Roma');

CREATE TABLE Sede_Dipartimento (
    Codice_Sede INT,
    Codice_Dipartimento INT,
    Note VARCHAR(200),
    PRIMARY KEY (Codice_Sede , Codice_Dipartimento),
    FOREIGN KEY (Codice_Sede) REFERENCES Sede (Codice) ON UPDATE CASCADE,
    FOREIGN KEY (Codice_Dipartimento) REFERENCES Dipartimento (Codice) ON UPDATE CASCADE
);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1000,100);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1001,100);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1001,101);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1001,103);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1002,100);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1002,101);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1002,103);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1003,100);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1003,102);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1004,100);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1004,101);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1004,102);

insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1004,104);

CREATE TABLE Corso_Laurea (
    Codice INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descrizione VARCHAR(200)
);

insert into Corso_Laurea (Codice,Nome)
values(1,'Informatica');

insert into Corso_Laurea (Codice,Nome)
values(2,'Giurisprudenza');

insert into Corso_Laurea (Codice,Nome)
values(3,'Ingegneria');

insert into Corso_Laurea (Codice,Nome)
values(4,'Lettere');

insert into Corso_Laurea (Codice,Nome)
values(5,'Psicologia');

CREATE TABLE Modulo(
    Codice INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Descrizione VARCHAR(200),
    CFU SMALLINT NOT NULL CHECK (CFU >= 1 AND CFU <= 12)
);

insert into Modulo(Codice,Nome,CFU)		
values(1,'Programmazione',9);	

insert into Modulo(Nome,CFU)		
values('Analisi Matematica',6);	

insert into Modulo(Nome,CFU)		
values('Diritto Ambientale',6);	

insert into Modulo(Nome,CFU)		
values('Statistica',3);	

insert into Modulo(Nome,CFU)		
values('Calcolo Numerico',9);	

CREATE TABLE Studente(
    Matricola INT PRIMARY KEY AUTO_INCREMENT,
	Cognome VARCHAR(30) NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    Corso_laurea INT NOT NULL,
    Data_nascita DATE CHECK (Data_nascita < '2003/01/01'),
    Codice_fiscale CHAR(16) UNIQUE,
    Foto BLOB,
    FOREIGN KEY (Corso_laurea) REFERENCES Corso_laurea (Codice) ON UPDATE CASCADE
);

insert into Studente(Matricola, Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values('174900',1,'Mattia','Valente','1991/05/13','VLNMTT91E13L049G');

insert into Studente(Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values(1,'Francesco','Guarino','1993/06/24','GRNFRC93F24L049M');

insert into Studente(Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values(5,'Lucia','Carrino','1998/10/11','CRRLCI98M11S520G');

insert into Studente(Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values(2,'Selene','Inno','1994/10/31','INNSLN94G31L049K');

CREATE TABLE Docente(
    Matricola INT PRIMARY KEY AUTO_INCREMENT,
    Dipartimento INT NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    Cognome VARCHAR(30) NOT NULL,
    Data_nascita DATE CHECK (Data_nascita < '1998/01/01'),
    Codice_fiscale CHAR(16) UNIQUE,
    Foto BLOB,
    FOREIGN KEY (Dipartimento) REFERENCES Dipartimento (Codice) ON UPDATE CASCADE
);

insert into Docente(Matricola, Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)		
values(6600,100,'Maria','Novaro','1970/12/06','NVRMRA70D06M512C');	

insert into Docente(Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)		
values(102,'Luciana','Saudati','1966/04/24','SDTLCN66D24A233P');	

insert into Docente(Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)		
values(101,'Paola','Dattilo','1979/01/15','DTTPLA79A15F776H');	

insert into Docente(Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)			
values(100,'Stefano','Albanoni','1982/09/29','LBNSTF82I29L049P');	

CREATE TABLE Esame(
    Matricola_Studente INT,
    Codice_Modulo INT,
    Matricola_Docente INT,
    Data_Esame DATE NOT NULL,
    Voto SMALLINT NOT NULL CHECK (Voto >= 18 AND Voto <= 30),
    Lode CHAR(4) NOT NULL CHECK (Lode = '' OR Lode = 'LODE'),
    Note VARCHAR(200),
    PRIMARY KEY (Matricola_Studente, Codice_Modulo),
    CHECK (Lode = '' OR Voto = 30),
    FOREIGN KEY (Matricola_Studente) REFERENCES Studente (Matricola) ON UPDATE CASCADE,
    FOREIGN KEY (Matricola_Docente) REFERENCES Docente (Matricola) ON UPDATE CASCADE,
    FOREIGN KEY (Codice_Modulo) REFERENCES Modulo (Codice) ON UPDATE CASCADE
);

insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174901,1,6603,'2019/07/16',25,'');	

insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174903,2,6601,'2016/8/13',26,'');

insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174901,4,6600,'2017/11/11',30,'LODE');

insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174900,1,6603,'2019/11/11',28,'');

insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174902,5,6602,'2018/1/20',19,'');