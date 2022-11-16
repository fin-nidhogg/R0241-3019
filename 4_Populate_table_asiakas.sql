/* Populoidaan asiakkaat -taulu. */ 

/* Valitaan tietokanta johon tiedot syötetään */
USE puoti;

/* Oksennetaan tiedot tauluun */
INSERT INTO asiakas (etunimi,sukunimi,lähiosoite,postinumero,puhelin,alepros) VALUES 
('Toivo','Muukkonen','Tekniikantie 43','58500','050 501 3571','25'),
('Henna','Sibelius','Valssaamontie 18','13210','042 252 0550','0'),
('Miika','Seppänen','Liisankatu 47','57710','043 252 0550','0'),
('Maija','Harju','Mustinsuontie 36','99600','046 333 6073','0'),
('Mikki','Mukka','Liisankatu 45','57810','050 818 8014','0'),
('Jouko','Putkonen','Gesterbyntie 71','05820','042 702 1793','50');