#######################################################
# all tables here follow classDiagram.uxf design!!
#######################################################

DROP DATABASE bizislife;
CREATE DATABASE bizislife CHARACTER SET utf8;
USE bizislife;

#######################################################
#------------------------------------------------------
# PROSPECTINGCOMPANY keeps all companies registed and not registed.
# Registed company has realId and registrationdate information
# Application can scan this table to send out email and phone 
#    to all companies not registed yet!
# The ID is used to regist the company in our system.
# Unregisted company also can use this ID as login key to try our system.
#------------------------------------------------------
CREATE TABLE `bizislife`.`PROSPECTINGCOMPANY` ( 
`ID` VARCHAR(36) NOT NULL, 
`NAME` VARCHAR(255) NOT NULL, 
`EMAIL` VARCHAR(50),
`PHONE` VARCHAR(30),
`REALMID` VARCHAR(36),
`REGISTRATIONDATE` DATETIME DEFAULT NULL,
PRIMARY KEY (`ID`) 
) ENGINE=INNODB CHARSET=utf8 COLLATE=utf8_unicode_ci; 

#######################################################

CREATE TABLE `bizislife`.`COMPANY` ( 
`ID` VARCHAR(36) NOT NULL, 
`REALMID` VARCHAR(36) NOT NULL, 
`PREFERNAME` VARCHAR(255) NOT NULL, 
`REGISTNAME` VARCHAR(255), 
PRIMARY KEY (`ID`) 
) ENGINE=INNODB CHARSET=utf8 COLLATE=utf8_unicode_ci; 