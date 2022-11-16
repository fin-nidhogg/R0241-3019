/* Luodaan tietokantaan puoti, taulu nimeltä asiakas */

CREATE TABLE `puoti`.`asiakas` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `etunimi` VARCHAR(60) NOT NULL,
    `sukunimi` VARCHAR(60) NOT NULL,
    `lähiosoite` VARCHAR(60) NOT NULL,
    `postinumero` CHAR(5) NOT NULL,
    `puhelin` VARCHAR(30) NOT NULL,
    `alepros` FLOAT NOT NULL DEFAULT '0' CONSTRAINT `check_alepros_valilla_0_100` CHECK(
        `alepros` <= 100
        AND `alepros` >= 0
    ),
    `creaStamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;


/* Luodaan tuote -taulu */

CREATE TABLE `puoti`.`tuote` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nimi` VARCHAR(64) NOT NULL,
    `kuvaus` VARCHAR(128) NOT NULL,
    `ean` BIGINT(13) NOT NULL CONSTRAINT `ean_aina_13` CHECK(LENGTH(`ean`) = 13),
    `hintaalvo` FLOAT NOT NULL,
    `yksikko` VARCHAR(10) NOT NULL,
    `alvpros` FLOAT NOT NULL CONSTRAINT `check_alvpros_valilla_0_24` CHECK(
        `alvpros` >= 0
        AND `alvpros` <= 24
    ),
    `creaStamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `availStamp` DATETIME NOT NULL DEFAULT '2099-12-31 23:00:00.000',
    `deleStamp` DATETIME NOT NULL DEFAULT '2099-12-31 23:59:59.000',
    `inStock` INT(64) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;


/* Luodaan ostoskori -taulu */

CREATE TABLE `puoti`.`ostoskori`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `tuoteid` INT NOT NULL,
    `asiakasid` INT NOT NULL,
    `monikerta` INT NOT NULL,
    `updStamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `payStamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `dlvrdStamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`tuoteid`) REFERENCES `tuote`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`asiakasid`) REFERENCES `asiakas`(`id`) ON DELETE CASCADE
) ENGINE = InnoDB;