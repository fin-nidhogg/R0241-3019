/* Populoidaan tuote taulu. 
Koska nörtit ovat laiskoja, tuotteille lasketaan satunnainen luontihetkeä ilmoittava aikaleima.
Normaalistihan tuotteen luonnissa käytettäisiin aikaleiman 
*/

/* Valitaan tietokanta */
USE puoti;

/* Määritellään kentät joihin tieto "oksennetaan" */
INSERT INTO
    `tuote` (`inStock`,`nimi`,`kuvaus`,`ean`,`hintaalvo`,`yksikko`,`alvpros`,`creaStamp`)

/* Itse lisättävät tiedot. 
HUOM! Realistisemman tuntuista kantaa varten inStock ja creaStamp arvot luodaan "satunnaisesti"
Normaalisti tuotteita syntyisi joko yksittäisiä puodin pitäjän toimesta tai ne viedäisiin ajotiedostona pelkän varastosaldon mukaan.  */
VALUES
(FLOOR(RAND()*(100-0+1))+0,'Housut Blåkläder','Koko C52 Musta/Harmaa','7330509763919','69.80','KPL','24',CURRENT_TIMESTAMP()),
(FLOOR(RAND()*(100-0+1))+0,'KOMPAKTIKATKAISIJA HAGER','P630 LSI 4N 250A 110kA','3250613198596','1915.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'UPPOASENNUSVALAIS ML HYDRO LED','23614 U. 300X600 TW','6410042379745','895.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'KAAPELISUOJA','DEFENDER MIDI','7392274657220','351.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'MERKINTÄTARRA','HEIJASTETARRA KIRJ. C KEL 100','6410064437423','88.40','PKT','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'SUOJAKOURU','JASU 85 Znk 85x1200mm','6410052604851','219.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'PYLVÄSJALUSTA TER','SJ-4/1500 TER','6410046076374','553.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'PISTOKANTARELE ZELIO','RXM4AB2B7 24VAC 4C/O 6A LED','3389119403801','13.40','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'Housut Blåkläder','Koko C52 Vihreä/Musta','7330509645994','95.90','KPL','24',CURRENT_TIMESTAMP()),
(FLOOR(RAND()*(100-0+1))+0,'ALUMIINISIDELANKA REKA','AHL 25/5,60 SL R100','6410001240253','82.70','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'JOHDONSUOJAKATKAISIJA EATON','PLS6-C3 6kA 1-NAP C 3A','4015082426712','26.70','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'KYTKIN HAGER','6/16A/250V UR matta kromi','4011334335337','19.10','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'SUOJALETKU MUOVI HF','FPAS67B-10M MUSTA','5052446012678','29.00','M','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'Hybriditakki Blåkläder','Koko S Harmaa/Musta','7330509722923','126.90','KPL','24',CURRENT_TIMESTAMP()),
(FLOOR(RAND()*(100-0+1))+0,'JOHDONSUOJAKATKAISIJA S200C','2-NAPAINEN C-KÄYRÄ 13A','4053546043099','31.80','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'LED-LAMPPU PEREL','24V 16 LEDIÄ E14 EXIT 15lm','6410047988683','11.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'KYTKENTÄKAAPELI-CAT6 LANET','CAT6 UTP RJ45/RJ45 1m','6410072751191','3.20','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'JATKOKAPPALE MEKA','RSS-40-300 M','6438377010478','22.70','KPL','24',CURRENT_TIMESTAMP()),
(FLOOR(RAND()*(100-0+1))+0,'JOHTOSARJA OPTILINE','OL GST 18i3 2,5mm 1m NA/-','3606485112374','10.40','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'LED-LAMPPU VINTAGE 1906 LED','1906 CLBW 1,5W/824 FIL GD E14','4058075293243','4.63','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'LINEAARILAMPPU PARATHOM SPEC','LINE118 19W/827 2452LM R7S DIM','4058075626782','43.10','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'Talviparka Blåkläder','Koko XS keltainen/Musta','7330509652961','239.80','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'Softshelltakki Blåkläder','Koko S Vihreä/Musta','7330509689271','104.90','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'UPPOASENNUSVALAISIN JURA','80 GU10 MAX 15W HARJATTU TERÄS','4017807376234','9999.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'VIPU HAGER','2-OS VERHOK. 2XNUOLI ANT','4011334297352','24.50','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'KONTAKTORI TESYS','LC1D188BL 2S+2AV 1','3389110449716','114.00','KPL','24',CURRENT_TIMESTAMP()),
(FLOOR(RAND()*(100-0+1))+0,'TEOLLISUUSVALAISIN SULJETTU','PRO 400 66-380MA 75W DALI','6430064150986','431.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'LIITINLEVY ABB','DKS / 2 x BNC/TNC (9,8mm)','4011395181607','11.20','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'KAAPELIJAKOKAAPPI','VAKIO 3.2 K04 RAL6009','6430051861116','928.00','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000)))),
(FLOOR(RAND()*(100-0+1))+0,'PUTKIKIINNIKE SORMAT','KOPI PK 135/19-21mm RST','6416031422249','4.44','KPL','24',FROM_UNIXTIME(UNIX_TIMESTAMP('2021-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000))));