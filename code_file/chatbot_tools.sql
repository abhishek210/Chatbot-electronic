-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: chatbot
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tools`
--

DROP TABLE IF EXISTS `tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tools` (
  `Question` varchar(5000) NOT NULL,
  `tool_name` varchar(5000) NOT NULL,
  `SL NO` int(11) NOT NULL,
  PRIMARY KEY (`SL NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tools`
--

LOCK TABLES `tools` WRITE;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` VALUES ('How to make a Flying Traffic Light?','Bitcraze Crazyflie 2.0',1),('How to make a Flying Traffic Light?','Bitcraze Crazyradio PA',2),('How to make a Flying Traffic Light?','5 mm LED: Red',3),('How to make a Flying Traffic Light?','5 mm LED: Green',4),('How to make a Flying Traffic Light?','5 mm LED: Yellow',5),('How to make a Flying Traffic Light?','Resistor 330 ohm',6),('How to make a Flying Traffic Light?','Bitcraze Crazyflie Python Client',7),('How to make a Flying Traffic Light?','Bitcraze VM',8),('How to make a robotic arm?','Arduino Uno',9),('How to make a robotic arm?','1000uF Capacitor (4 pieces)',10),('How to make a robotic arm?','100nF Capacitor (4 pieces)',11),('How to make a robotic arm?','Servo Motor (SG 90- four pieces)',12),('How to make a robotic arm?','10K pot- Variable Resistor (4 pieces)',13),('How to make a robotic arm?','Power Supply (5v- preferably two)',14),('How to make a Chess Robot?','servo motors (for the robotic arm, basically 6)',15),('How to make a Chess Robot?','reed sensors (64)',16),('How to make a Chess Robot?','Propeller microcontroller',17),('How to make a Chess Robot?','chess board',18),('How to make a Chess Robot?','10kohm resistors',19),('How to make a Chess Robot?','100 ohm resistors',20),('How to make a Chess Robot?','1k ohm resistors',21),('How to make a Chess Robot?','2.2k ohm resistors',22),('How to make a Chess Robot?','0.1uf capacitors',23),('How to make a Chess Robot?','3.3v voltage regulator',24),('How to make a Balancing Robot?','Arduino Mega 2560',25),('How to make a Balancing Robot?','USB host shield',26),('How to make a Balancing Robot?','Bluetooth dongle ',27),('How to make a Balancing Robot?','Parallax continuous servos',28),('How to make a Balancing Robot?','Dual Use Gyro and Accelerometer Sensor Board',29),('How to make a Balancing Robot?','Bluetooth transceiver (for telemetry)',30),('How to make a Balancing Robot?','1 x 2S (2 cell) lithium polymer battery',31),('How to make a Balancing Robot?','1 x Lipo battery low voltage alarm',32),('How to make a Balancing Robot?','3 x Potentiometers (for tuning PID controller)',33),('How to make a Balancing Robot?','1 x Frame of your choice. Should be relatively tall.',34),('How to make a Balancing Robot?','1 x Assortment of zip-ties',35),('How to make a Balancing Robot?','1 x Assortment of wires and jumpers',36),('How to make a Balancing Robot?','1 x Wheels of your choice. Should have a diameter of approximately 7 inches.',37),('How to make a FPV Quadcopter?','Charger',38),('How to make a FPV Quadcopter?','Radio',39),('How to make a FPV Quadcopter?','5.8Ghz Antenna',40),('How to make a FPV Quadcopter?','5.8G 200mW AV Transmitter Receiver',41),('How to make a FPV Quadcopter?','Controller for Quadcopter',42),('How to make a FPV Quadcopter?','Quadcopter Frame',43),('How to make a FPV Quadcopter?','Batteries (find similar, lighter ones) *2',44),('How to make a FPV Quadcopter?','Camera',45),('How to make a FPV Quadcopter?','PTZ gimbal for Quadcopter',46),('How to make a FPV Quadcopter?','LiPo Alarm',47),('How to make a FPV Quadcopter?','Simple Mini OSD',48),('How to make a FPV Quadcopter?','Mini Servos for gimbal*2',49),('How to make a FPV Quadcopter?','640×480 video Glasses',50),('How to make a FPV Quadcopter?','Motors (type is up to hacker discretion)*4',51),('How to make a FPV Quadcopter?','ESCs (speed controllers)*4',52),('How to make a FPV Quadcopter?','bullet connectors',53),('How to make a FPV Quadcopter?','Nylon XT60 Connectors',54),('How to make a FPV Quadcopter?','Red Heat Shrink',55),('How to make a FPV Quadcopter?','Black Heat Shrink',56),('How to make an Air Purifier?','Arduino Yun',57),('How to make an Air Purifier?','Sharp Plasmacluster Air Purifier',58),('How to make an Air Purifier?','GP2Y1010AUOF Compact Optical Dust Sensor',59),('How to make an Air Purifier?','Relay Module',60),('How to make an Air Purifier?','Breadboard (generic)',61),('How to make an Air Purifier?','Capacitor 220  µF',62),('How to make an Air Purifier?','Resistor 150Ω',63),('How to make an Air Purifier?','1-meter AC Cable',64),('How to make an Air Purifier?','Male/Male Jumper Wires',65),('How to make an Air Purifier?','Male/Female Jumper Wires',66),('How to make an Air Purifier?','Terminal Block',67),('How to make an Air Purifier?','Solder Wire',68),('How to make an Air Purifier?','Mutimeter',69),('How to make an Air Purifier?','Soldering Gun',70),('How to make an Air Purifier?','Wire Stripper',71),('How to make an Air Purifier?','Amazon Web Services AWS IoT',72),('How to make an Air Purifier?','Arduino IDE',73),('How to make an Air Purifier?','Terminal',74),('How to make an Air Purifier?','Mosquitto MQTT',75),('How to make a Metal Detector robot?','AT89c51 microcontroller',76),('How to make a Metal Detector robot?','RF encoder and decoder',77),('How to make a Metal Detector robot?','RF transmitter and receiver pair',78),('How to make a Metal Detector robot?','Push buttons',79),('How to make a Metal Detector robot?','Buzzer',80),('How to make a Metal Detector robot?','Robot',81),('How to make a Metal Detector robot?','L293d',82),('How to make a Metal Detector robot?','Rs 232 cable',83),('How to make a Metal Detector robot?','Keil software',84),('How to make a Metal Detector robot?','Flash magic',85),('How to make a Metal Detector robot?','Proteus',86),('How to make a Metal Detector robot?','AT89s51 microcontroller',87),('How to make a Metal Detector robot?','PIR sensor',88),('How to make a Metal Detector robot?','RF transmitter and receiver',89),('How to make a Metal Detector robot?','L293D ',90),('How to make a Metal Detector robot?','PC',91),('How to make a Metal Detector robot?','Robot chassis',92),('How to make a Metal Detector robot?','Max232 IC',93),('How to make a Metal Detector robot?','9V battery',94),('How to make a Metal Detector robot?','Motors',95),('How to make an Autonomous High Altitude Glider?','Arduino 101 & Genuino 101',96),('How to make an Autonomous High Altitude Glider?','Servos (Tower Pro MG996R)*2',97),('How to make an Autonomous High Altitude Glider?','u-blox uBLOX MAX-M8Q GPS',98),('How to make an Autonomous High Altitude Glider?','Arduino IDE',99),('How to make Alexa Drone Pilot','Parrot Minidrone',100),('How to make Alexa Drone Pilot','Amazon Alexa Amazon Echo',101),('How to make Alexa Drone Pilot','Android Device',102),('How to make Alexa Drone Pilot','Amazon Alexa Skills Kit',103),('How to make Alexa Drone Pilot','Amazon WebServices AWS IoT',104),('How to make Alexa Drone Pilot','Amazon Web Services AWS Lambda',105),('How to make Alexa Drone Pilot','Amazon Web Services AWS Cognito',106);
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29 11:16:11
