CREATE DATABASE IF NOT EXISTS motueka;
USE motueka;

-- Room Table
DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `roomID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `roomname` varchar(100) NOT NULL,
  `description` text,
  `roomtype` char(1) DEFAULT 'D',
  `beds` int DEFAULT NULL,
  PRIMARY KEY (`roomID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Truncate table before insert `room`
--
TRUNCATE TABLE `room`;
--
-- Dumping data for table `room`

INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (1,"Tui","Single room, sleeps 5 people","S",5);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (2,"Fantail","Double room, sleeps 5 people","D",5);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (3,"Kokako","Double room, sleeps 2 people","D",2);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (4,"Kea","Single room, sleeps 2 people","S",2);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (5,"Moa","Single room, sleeps 5 people","S",5);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (6,"Kiwi","Single room, sleeps 4 people","S",4);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (7,"Helen","Single room, sleeps 2 people","S",2);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (8,"Kaka","Double room, sleeps 3 people","D",3);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (9,"Kakapo","Double room, sleeps 3 people","D",3);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (10,"Morepork","Single room, sleeps 5 people","S",5);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (11,"Weka","Double room, sleeps 2 people","D",2);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (12,"Kereru","Double room, sleeps 2 people","D",2);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (13,"Takahe","Single room, sleeps 4 people","S",4);
INSERT INTO `room` (`roomID`,`roomname`,`description`,`roomtype`,`beds`) VALUES (14,"Karearea","Single room, sleeps 1 person","S",1);

-- Customer Table
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '.',
  `admin` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Truncate table before insert `customer`
--
TRUNCATE TABLE `customer`;
--
-- Dumping data for table `customer`

INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (2,"Desiree","Collier","collier@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (3,"Irene","Walker","walker@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (4,"Forrest","Baldwin","baldwin@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (5,"Beverly","Sellers","sellers@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (6,"Glenna","Kinney","kinney@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (7,"Montana","Gallagher","gallagher@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (8,"Harlan","Lara","lara@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (9,"Benjamin","King","king@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (10,"Rajah","Olsen","olsen@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (11,"Castor","Kelly","kelly@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (12,"Omar","Oconnor","oconnor@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (13,"Porter","Leonard","leonard@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (14,"Buckminster","Gaines","gaines@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (15,"Hunter","Rodriquez","rodriquez@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (16,"Zahir","Harper","harper@gmail.com", 'Harper1234', 1);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (17,"Sopoline","Warner","warner@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (18,"Burton","Parrish","parrish@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (19,"Abbot","Rose","rose@gmail.com", '.', 0);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (20,"Barry","Burks","burks@gmail.com", '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1);
INSERT INTO `customer` (`customerID`,`firstname`,`lastname`,`email`,`password`,`admin`) VALUES (21,"Jolie","Fenwick","jolie.fenwick@icloud.com", 'c036f1523041e3adabf335e9b0d4d7a8f55570a9', 9);

-- Bookings Table
DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `bookingID` int NOT NULL AUTO_INCREMENT,
  `checkindate` date NOT NULL,
  `checkoutdate` date NOT NULL,
  `contactnumber` varchar(15) NOT NULL,
  `extras` varchar(255) DEFAULT NULL,
  `roomreview` varchar(255) DEFAULT NULL,
  `roomID` int UNSIGNED NOT NULL,
  `customerID` int UNSIGNED NOT NULL,
  PRIMARY KEY (`bookingID`),
  KEY `FK_booking1` (`roomID`),
  KEY `FK_booking2` (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Truncate table before insert `booking`
--
TRUNCATE TABLE `booking`;
--
-- Dumping data for table `booking`

INSERT INTO `booking` (`bookingID`,`checkindate`,`checkoutdate`,`contactnumber`,`extras`,`roomreview`,`roomID`,`customerID`) VALUES (1,"2023-02-01","2023-02-05","022 555 6666","None","Great Location", 14, 2);
INSERT INTO `booking` (`bookingID`,`checkindate`,`checkoutdate`,`contactnumber`,`extras`,`roomreview`,`roomID`,`customerID`) VALUES (2,"2023-06-14","2023-06-18","027 852 8522","N/A","Spacious", 8, 3);
INSERT INTO `booking` (`bookingID`,`checkindate`,`checkoutdate`,`contactnumber`,`extras`,`roomreview`,`roomID`,`customerID`) VALUES (3,"2023-04-20","2023-04-27","021 666 3333","Mini bar","Very clean", 11, 4);
INSERT INTO `booking` (`bookingID`,`checkindate`,`checkoutdate`,`contactnumber`,`extras`,`roomreview`,`roomID`,`customerID`) VALUES (4,"2023-04-20","2023-04-27","021 111 5656","BBQ","Amazing location", 4, 10);
INSERT INTO `booking` (`bookingID`,`checkindate`,`checkoutdate`,`contactnumber`,`extras`,`roomreview`,`roomID`,`customerID`) VALUES (5,"2023-04-20","2023-04-27","021 222 8877","Portacot","Beautiful", 9, 11);

-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking1` FOREIGN KEY (`roomID`) REFERENCES `room` (`roomID`),
  ADD CONSTRAINT `FK_booking2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);
SET FOREIGN_KEY_CHECKS=1;
