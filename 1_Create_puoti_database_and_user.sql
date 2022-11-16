/* Luodaan aplikaatiota varten oma käyttäjä nimeltä puoti ja luodaan sille salasana.
 Käyttäjä voi muodostaa yhteyden mistä tahansa (Ei suositeltavaa tosin) */
CREATE USER 'puoti' @'%' IDENTIFIED WITH caching_sha2_password BY 'bC3Ngxbl99bWqZ!B';

/* Otetaan käyttäjältä turvasyistä ns globaalit oikeudet pois */
GRANT USAGE ON *.* TO 'puoti' @'%';

/* Otetaan rajoitukset varmuuden vuoksi pois. (defaulttina pitäisi olla 0 kaikissa säännöissä.) */
ALTER USER 'puoti' @'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

/* Luodaan käyttäjälle saman niminen tietokanta.
 Hyvien käytäntöjen mukaan jokaisella aplikaatiolla tulisi olla mahdollisuuksien mukaan oma käyttäjätunnus ja tietokanta.
 Joskin taulujen nimet voidaan erotella sovelluksittain esimerkiksi erilaisilla etuliitteillä.
 HOX Samalla asetetaan koko puoti -tietokannalle oikea merkistö */
CREATE DATABASE IF NOT EXISTS `puoti` CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

/* Annetaan puoti käyttäjälle kaikki oikeudet saman nimiseen tietokantaan. */
GRANT ALL PRIVILEGES ON `puoti`.* TO 'puoti' @'%';