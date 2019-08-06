#######################################################
# all tables here follow classDiagram.uxf design!!
#######################################################

DROP DATABASE bizislife;
CREATE DATABASE bizislife CHARACTER SET utf8;
USE bizislife;

#######################################################
#------------------------------------------------------
# companytype can be 1 for ProspectingCompany,
# 2 for RegistedCompany
#
# PROSPECTINGCOMPANY keeps all companies registed and not registed.
# Registed company has registname and registrationdate information
# Application can scan PROSPECTINGCOMPANY table to send out email  
#    to all companies not registed yet!
# The prefername is used to regist the company in this system. 
#    for unregisted company(prefername_123456 : 123456 is random 6 digit).
# Unregisted company will have a guest user (guest : guest) in SSO to login
#------------------------------------------------------

CREATE TABLE `company` (
  `ID` bigint(20) NOT NULL,
  `REALMID` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `PREFERNAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REGISTNAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `REGISTRATIONDATE` datetime DEFAULT NULL,
  `REGISTEDCOMPANYID` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companytype` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci


#######################################################
#------------------------------------------------------
CREATE TABLE `address` (
  `ID` bigint(20) NOT NULL,
  `STREET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CITY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROVINCE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POSTALCODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTRY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LATITUDE` float(10,6) DEFAULT NULL,
  `LONGITUDE` float(10,6) DEFAULT NULL,
  `COMPANYID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_company` (`COMPANYID`),
  CONSTRAINT `fk_company` FOREIGN KEY (`COMPANYID`) REFERENCES `company` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci

#------------------------------------------------------
