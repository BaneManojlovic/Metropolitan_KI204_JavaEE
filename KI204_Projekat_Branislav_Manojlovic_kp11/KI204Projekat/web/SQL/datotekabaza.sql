/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  bane
 * Created: May 11, 2018
 */

CREATE TABLE zaposleni (
    zaposleni_br      INT             NOT NULL,
    datum_rodjenja DATE            NOT NULL,
    ime VARCHAR(14)     NOT NULL,
    prezime   VARCHAR(16)     NOT NULL,
    pol      ENUM ('M','Z')  NOT NULL,    
    angazovan_od   DATE    NOT NULL,
    PRIMARY KEY (zaposleni_br)
);

CREATE TABLE departmani (
    dept_br     CHAR(4)         NOT NULL,
    dept_naziv   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_br),
    UNIQUE  KEY (dept_naziv)
);

CREATE TABLE dept_menadzer (
   dept_br      CHAR(4)         NOT NULL,
   zaposleni_br       INT             NOT NULL,
   od_datuma    DATE            NOT NULL,
   do_datuma      DATE            NOT NULL,
   KEY         (zaposleni_br),
   KEY         (dept_br),
   FOREIGN KEY (zaposleni_br)  REFERENCES zaposleni (zaposleni_br)    ON DELETE CASCADE,
   FOREIGN KEY (dept_br) REFERENCES departmani (dept_br) ON DELETE CASCADE,
   PRIMARY KEY (zaposleni_br,dept_br)
); 

CREATE TABLE dept_zap (
    zaposleni_br      INT             NOT NULL,
    dept_br     CHAR(4)         NOT NULL,
    od_datuma   DATE            NOT NULL,
    do_datuma     DATE            NOT NULL,
    KEY         (zaposleni_br),
    KEY         (dept_br),
    FOREIGN KEY (zaposleni_br)  REFERENCES zaposleni   (zaposleni_br)  ON DELETE CASCADE,
    FOREIGN KEY (dept_br) REFERENCES departmani (dept_br) ON DELETE CASCADE,
    PRIMARY KEY (zaposleni_br,dept_br)
);
CREATE TABLE naslovi (
    zaposleni_br      INT             NOT NULL,
    naslov       VARCHAR(50)     NOT NULL,
    od_datuma   DATE            NOT NULL,
    do_datuma     DATE,
    KEY         (zaposleni_br),
    FOREIGN KEY (zaposleni_br) REFERENCES zaposleni (zaposleni_br) ON DELETE CASCADE,
    PRIMARY KEY (zaposleni_br,naslov, od_datuma)
); 

CREATE TABLE plate (
    zaposleni_br      INT             NOT NULL,
    plata      INT             NOT NULL,
    od_datuma   DATE            NOT NULL,
    do_datuma     DATE            NOT NULL,
    KEY         (zaposleni_br),
    FOREIGN KEY (zaposleni_br) REFERENCES zaposleni (zaposleni_br) ON DELETE CASCADE,
    PRIMARY KEY (zaposleni_br, od_datuma)
);
