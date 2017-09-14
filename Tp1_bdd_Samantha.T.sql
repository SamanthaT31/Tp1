-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `ABSENCES`;
CREATE TABLE `ABSENCES` (
  `refVisiteur` int(11) NOT NULL,
  `dateDebut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nbjours` int(11) DEFAULT NULL,
  `motif` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refVisiteur`,`dateDebut`),
  CONSTRAINT `ABSENCES_ibfk_1` FOREIGN KEY (`refVisiteur`) REFERENCES `VISITEURS` (`idVisiteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ABSENCES` (`refVisiteur`, `dateDebut`, `nbjours`, `motif`) VALUES
(1,	'2017-09-14 09:33:07',	3,	'malade'),
(2,	'2017-09-14 09:33:30',	1,	'rdv');

DROP TABLE IF EXISTS `VISITEURS`;
CREATE TABLE `VISITEURS` (
  `idVisiteur` int(11) NOT NULL,
  `nomV` varchar(255) DEFAULT NULL,
  `dateEmbauche` date DEFAULT NULL,
  PRIMARY KEY (`idVisiteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `VISITEURS` (`idVisiteur`, `nomV`, `dateEmbauche`) VALUES
(1,	'Samantha',	'2017-03-12'),
(2,	'Baptiste',	'2017-06-20');

-- 2017-09-14 09:34:24 