/*STUDENTE*/
/*Matricola già esistente*/
insert into Studente(Matricola, Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values('174901',1,'Filippo','Reitano','1992/11/6','RTNFLP92H6F320E');

/*Data di nascita non valida*/
insert into Studente(Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values(3,'Luca','Perrino','2009/6/4','PRRLCA90F04G300P');

/*Codice Fiscale più lungo di 16 caratteri*/
insert into Studente(Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values(1,'Filippo','Reitano','1992/11/6','RTNFLP92H6F320E55');

/*Valori impostati a not null (es.nome)*/
insert into Studente(Corso_laurea,Cognome, Data_nascita, Codice_fiscale)
values(3,'Perrino','2009/6/4','PRRLCA90F04G300P');

/*Codice Fiscale già esistente*/
insert into Studente(Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values(1,'Guarnieri','Franco','1996/10/6','GRNFRC93F24L049M');

/*Vincolo: corso di laurea non esiste*/
insert into Studente(Corso_laurea, Nome, Cognome, Data_nascita, Codice_fiscale)
values(15,'Dario','Puglisi','1990/05/18','PGLDRI90E18L049Q');


/*DOCENTE*/
/*Matricola già esistente*/
insert into Docente(Matricola, Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)		
values(6600,100,'Melissa','Petrera','1973/06/13','PTRMLS73F13H711P');	

/*Data di nascita non valida*/
insert into Docente(Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)		
values(101,'Eugenia','Giordano','1999/05/11','GRDEGN93T11L049Y');	

/*Codice Fiscale più lungo di 16 caratteri*/
insert into Docente(Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)		
values(101,'Eugenia','Giordano','1980/05/11','GRDEGN80T11L049YPLL');

/*Valori impostati a not null (es.dipartimento)*/
insert into Docente(Nome, Cognome, Data_nascita, Codice_fiscale)		
values('Melissa','Petrera','1973/06/13','PTRMLS73F13H711P');	

/*Codice Fiscale già esistente*/
insert into Docente(Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)		
values(101,'Eugenia','Giordano','1980/05/11','SDTLCN66D24A233P');

/*Vincolo: dipartimento non esiste*/
insert into Docente(Dipartimento, Nome, Cognome, Data_nascita, Codice_fiscale)		
values(109,'Eugenia','Giordano','1980/05/11','GRDEGN93T11L049Y');


/*MODULO*/
/*Codice già esistente*/
insert into Modulo(Codice,Nome,CFU)		
values(3,'Fisica',6);

/*Valori impostati a not null (es.CFU)*/
insert into Modulo(Nome)		
values('Psicologia');

/*valore CFU oltre il range definito*/
insert into Modulo(Nome,CFU)		
values('Analisi 2',14);	


/*CORSO LAUREA*/
/*Codice già esistente*/
insert into Corso_Laurea (Codice,Nome)
values(8,'Latino');

/*Valori impostati a not null (es.nome)*/
insert into Corso_Laurea (Codice)
values(8);


/*SEDE*/
/*Codice già esistente*/
insert into Sede (Codice,Indirizzo,Citta)
values(1000,'Via Vittorio Emanuele II,15 ','Bolzano');


/*DIPARTIMENTO*/
/*Codice già esistente*/
insert into Dipartimento (Codice,Nome)
values(101,'Fisica');


/*SEDE DIPARTIMENTO*/
/*Codice dipartimento non esistente nella tabella dipartimento*/
insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(1000,600);

/*Codice sede non esistente nella tabella sede*/
insert into Sede_Dipartimento (Codice_Sede,Codice_Dipartimento)
values(9000,100);


/*ESAME*/
/*Matricola Studente non esiste*/
insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174991,1,6603,'2019/07/16',25,'');

/*Codice Modulo non esiste*/
insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174900,90,6603,'2019/11/11',28,'');

/*Codice Docente non esiste*/
insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174903,2,6901,'2016/8/13',26,'');

/*19 e LODE*/
insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174902,5,6602,'2018/1/20',19,'LODE');

/*Voto più alto del range definito*/
insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174901,1,6603,'2019/07/16',33,'');	

/*Valori impostati a not null (es.codice_modulo)*/
insert into Esame(Matricola_Studente,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174903,6601,'2016/8/13',26,'');

/*Scrittura sbagliata di lode*/
insert into Esame(Matricola_Studente,Codice_Modulo,Matricola_Docente,Data_Esame,Voto,Lode)		
values(174901,4,6600,'2017/11/11',30,'LODA');