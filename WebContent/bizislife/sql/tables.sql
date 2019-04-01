#######################################################
# all tables here follow classDiagram.uxf design!!
#######################################################

DROP DATABASE bizislife;
CREATE DATABASE bizislife CHARACTER SET utf8;
USE bizislife;

#######################################################

CREATE TABLE `bizislife`.`COMPANY` ( 
`ID` VARCHAR(36) NOT NULL, 
`REALMID` VARCHAR(36) NOT NULL, 
`PREFERNAME` VARCHAR(255) NOT NULL, 
`REGISTNAME` VARCHAR(255), 
PRIMARY KEY (`ID`) 
) ENGINE=INNODB CHARSET=utf8 COLLATE=utf8_unicode_ci; 