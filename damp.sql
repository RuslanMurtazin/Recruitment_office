-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.23 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных userdb
CREATE DATABASE IF NOT EXISTS `userdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `userdb`;

-- Дамп структуры для таблица userdb.recruits
CREATE TABLE IF NOT EXISTS `recruits` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `height` int(3) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `arms` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы userdb.recruits: ~14 rows (приблизительно)
/*!40000 ALTER TABLE `recruits` DISABLE KEYS */;
INSERT INTO `recruits` (`userid`, `firstname`, `lastname`, `dob`, `email`, `height`, `weight`, `category`, `arms`) VALUES
	
	(22, 'Rrewtret', 'tretrey', '2016-11-24', 'ggcxvdc', 165, 60, '', ''),
	(23, 'Updated user', 'Updated last name', '2016-11-05', 'fwe', 170, 75, '', ''),
	(24, 'new', 'dasdas', '2016-11-20', 'dsadas', 181, 70, '', ''),
	(26, 'new', 'dasdas', '2016-11-20', 'dsadas', 180, 75, '', NULL),
	(30, 'test', 'bffd', '2016-11-05', 'fdsfsdg', 173, 75, 'B', ''),
	(31, 'Bla', 'bla', '1997-10-08', 'test@mail.ru', 321, 321, 'A1', 'Desant'),
	(32, 'Ruslan', 'Murtazin', '1997-10-08', 'rouslanmurtazin@yandex.ru', 176, 60, 'B1', NULL);
/*!40000 ALTER TABLE `recruits` ENABLE KEYS */;

-- Дамп структуры для таблица userdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_name` varchar(15) NOT NULL,
  `user_pass` varchar(15) NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы userdb.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_name`, `user_pass`) VALUES
	('admin', 'admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Дамп структуры для таблица userdb.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_name` varchar(15) NOT NULL,
  `role_name` varchar(15) NOT NULL,
  PRIMARY KEY (`user_name`,`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы userdb.user_roles: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_name`, `role_name`) VALUES
	('admin', 'Polkovnik');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
