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
-- Table structure for table `description_table`
--

DROP TABLE IF EXISTS `description_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `description_table` (
  `SL. No.` int(11) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `Link` varchar(500) NOT NULL,
  PRIMARY KEY (`SL. No.`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description_table`
--

LOCK TABLES `description_table` WRITE;
/*!40000 ALTER TABLE `description_table` DISABLE KEYS */;
INSERT INTO `description_table` VALUES (1,'DRONE','How to make a Flying Traffic Light?','Signal your colleagues if you\'re busy or not by flying a small traffic light around showing red, yellow or green status. Quick hack to build a flying traffic light that is attached onto a Crazyflie 2.0 using a prototype deck. It has a red, yellow and green LED that can be controlled from the ground.','https://www.hackster.io/evoggy/flying-traffic-light-8be87d'),(2,'DRONE','How to make a FPV Quadcopter?','Aerial photography made easy with an onboard camera and wireless video downlink.','https://www.hackster.io/finkbuilt/fpv-quadcopter-77c12d'),(3,'DRONE  ','How to make an Autonomous High Altitude Glider?','A fully autonomous fixed-wing glider designed to safely return a payload after being deployed on near-space missions.','https://www.hackster.io/53982/autonomous-high-altitude-glider-055aa3'),(4,'DRONE','How to make Alexa Drone Pilot','Piloting your drone with voice commands. Alexa start drone pilot ... take off, go up, right, spin left, take picture, land.','https://www.hackster.io/jose-troche/alexa-drone-pilot-7f2deb'),(5,'ROBOTICS','How to make a robotic arm?','Robotic Arm is one of the popular concepts in the robotic community. Robotic arms are very common in industries where they are mainly used in assembly lines in manufacturing plants.','https://circuitdigest.com/microcontroller-projects/diy-arduino-robotic-arm-tutorial'),(6,'ROBOTICS','How to make a Chess Robot?','Chess is a very famous and common game worldwide. The main purpose of the design is to develop a stand-alone chess robot using an intelligent system to provide more entertainment with low cost as much as possible for home use.','https://www.instructables.com/id/Chess-Robot/'),(7,'ROBOTICS','How to make a Balancing Robot?','A balancing robot operates on the same principles as the popular Segway two wheeled transportation system. That is, it accelerates and decelerates the wheels in order to keep the entire system upright.  We used a 3D printed frame along with some components I had lying around. The code incorporates a PID controller and a Kalman filter. The PID controller code used was from the Arduino PID Library and the Kalman filter was based off this project. The primary purpose of the project was to learn how to write and use a Kalman filter.','https://barrettsprojects.wordpress.com/2014/03/11/balancing-robot-arduino/'),(8,'ROBOTICS','How to make a Human Detection Robot?','Human detection robot is not a new technology. Many types of human detection robots were designed depending on the application. During the natural calamities like earthquakes, it is difficult to rescue the human beings under the buildings. Though detection by rescue team is done, it consumes a lot of time. Detection of human in appropriate time is very important in such situations. This article presents a simple human detection robot that is operated manually using RF technology.','https://www.electronicshub.org/human-detection-robot/'),(9,'ROBOTICS','How to make a Metal Detector robot?','Land mines buried under the ground causes threat to the lives and affect the economy of the nation. Detection and removing of these mines manually is a dangerous task, which may sometimes causes accidents. In such situations robots aid in detection of the land mines. Not only  land mines, these robots can be used to detect any other metals presented in the ground. This article explains the metal detection robot that uses RF technology.','https://www.electronicshub.org/metal-detector-robotic-vehicle/'),(10,'AIR PURIFIER','How to make an Air Purifier?','The presence of dust in homes, offices, and other human environments are unavoidable. In fact, according to the Environmental Protection Agency, indoor air can be 2 to 5 times more polluted than outdoor air. This airborne pollution contributes to minor annoyances such as itchy eyes, sneezing, and headaches to human beings. Worst still, it can be a major contributing factor to severe allergies, life-threatening asthma. To solve this problem, a working air purifier machine well address this issue.We would leverage  the advantages of IoT to make the the air purifier smarter. Instead of the conventional way that turning on the air purifier whole day, we would like to implement a “brain - microcontroller” and \"sensor” to operate only if the presence of dust reach certain level of awareness, this could save a lot of electricity! And the operational status will be available to our  \"terminal window\" in our laptop or any \"MQTT-enabled client\" devices whenever we travel to anywhere around the world.','https://create.arduino.cc/projecthub/aaronkow/simple-and-smart-air-purifier-system-8604ab');
/*!40000 ALTER TABLE `description_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29 11:16:10
