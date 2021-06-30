CREATE DATABASE  IF NOT EXISTS `ofcdb_trial1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ofcdb_trial1`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: ofcdb_trial1
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ofc_carriers`
--

DROP TABLE IF EXISTS `ofc_carriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofc_carriers` (
  `carrier_journeyId` int NOT NULL AUTO_INCREMENT,
  `carrier_id` int NOT NULL,
  `carrier_startinglocation` varchar(200) NOT NULL,
  `carrier_endlocation` varchar(200) NOT NULL,
  `carrier_starttime` varchar(45) NOT NULL,
  `carrier_endtime` varchar(45) DEFAULT NULL,
  `carrier_lastupdatedtime` varchar(45) DEFAULT NULL,
  `carrier_accepted` tinyint NOT NULL DEFAULT '0',
  `carrier_startingLocationObject` json NOT NULL,
  `carrier_endLocationObject` json NOT NULL,
  `carrier_journeyMode` json NOT NULL,
  `carrier_journeyProposals` json DEFAULT NULL,
  PRIMARY KEY (`carrier_journeyId`),
  UNIQUE KEY `carrier_journeyId_UNIQUE` (`carrier_journeyId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofc_carriers`
--

LOCK TABLES `ofc_carriers` WRITE;
/*!40000 ALTER TABLE `ofc_carriers` DISABLE KEYS */;
INSERT INTO `ofc_carriers` VALUES (1,1001007,'poi.60129546343','poi.60129546343','2021-05-04T11:29:43.502Z',NULL,'2021-04-04T12:16:46.556Z',0,'{\"title\": \"Srikakulam, Andhra Pradesh, India\", \"locationId\": \"place.10500729632604010\", \"landmarkValue\": \"Test pickup landmark\", \"directionsValue\": \"Test directions\", \"completeAddressValue\": \"Test pickup address\"}','{\"title\": \"Visakhapatnam, Andhra Pradesh, India\", \"locationId\": \"place.1657018279024290\", \"landmarkValue\": \"Test dest landmark\", \"directionsValue\": \"Test dest directions\", \"completeAddressValue\": \"Gurudwara, Visakhapatnam\"}','{\"journey_vehicleType\": \"1\", \"journey_vehicleModal\": \"Swift Desire\", \"journey_vehicleNumber\": \"AP31AB2021\"}',NULL),(2,1001007,'poi.60129546343','poi.60129546343','2021-05-04T11:29:43.502Z',NULL,'2021-04-04T12:16:46.556Z',0,'{\"title\": \"Srikakulam, Andhra Pradesh, India\", \"locationId\": \"place.10500729632604010\", \"landmarkValue\": \"Test pickup landmark\", \"directionsValue\": \"Test directions\", \"completeAddressValue\": \"Test pickup address\"}','{\"title\": \"Visakhapatnam, Andhra Pradesh, India\", \"locationId\": \"place.1657018279024290\", \"landmarkValue\": \"Test dest landmark\", \"directionsValue\": \"Test dest directions\", \"completeAddressValue\": \"Gurudwara, Visakhapatnam\"}','{\"journey_vehicleType\": \"1\", \"journey_vehicleModal\": \"Swift Desire\", \"journey_vehicleNumber\": \"AP31AB2021\"}',NULL),(3,1001007,'poi.60129546343','poi.60129546343','2021-05-04T11:29:43.502Z',NULL,'2021-04-04T12:16:46.556Z',0,'{\"title\": \"Srikakulam, Andhra Pradesh, India\", \"locationId\": \"place.10500729632604010\", \"landmarkValue\": \"Test pickup landmark\", \"directionsValue\": \"Test directions\", \"completeAddressValue\": \"Test pickup address\"}','{\"title\": \"Visakhapatnam, Andhra Pradesh, India\", \"locationId\": \"place.1657018279024290\", \"landmarkValue\": \"Test dest landmark\", \"directionsValue\": \"Test dest directions\", \"completeAddressValue\": \"Gurudwara, Visakhapatnam\"}','{\"journey_vehicleType\": \"1\", \"journey_vehicleModal\": \"Swift Desire\", \"journey_vehicleNumber\": \"AP31AB2021\"}',NULL),(4,1001007,'poi.60129546343','poi.60129546343','2021-05-04T11:29:43.502Z',NULL,'2021-04-04T12:16:46.556Z',0,'{\"title\": \"Srikakulam, Andhra Pradesh, India\", \"locationId\": \"place.10500729632604010\", \"landmarkValue\": \"Test pickup landmark\", \"directionsValue\": \"Test directions\", \"completeAddressValue\": \"Test pickup address\"}','{\"title\": \"Visakhapatnam, Andhra Pradesh, India\", \"locationId\": \"place.1657018279024290\", \"landmarkValue\": \"Test dest landmark\", \"directionsValue\": \"Test dest directions\", \"completeAddressValue\": \"Gurudwara, Visakhapatnam\"}','{\"journey_vehicleType\": \"1\", \"journey_vehicleModal\": \"Swift Desire\", \"journey_vehicleNumber\": \"AP31AB2021\"}',NULL),(5,1001006,'poi.60129546343','poi.60129546343','2021-05-04T11:29:43.502Z',NULL,'2021-04-10T11:04:40.360Z',0,'{\"title\": \"Srikakulam Andhra Pradesh India\", \"locationId\": \"place.10500729632604010\", \"landmarkValue\": \"Test pickup landmark\", \"directionsValue\": \"Test directions\", \"completeAddressValue\": \"Test pickup address\"}','{\"title\": \"Visakhapatnam, Andhra Pradesh, India\", \"locationId\": \"place.1657018279024290\", \"landmarkValue\": \"Test dest landmark\", \"directionsValue\": \"Test dest directions\", \"completeAddressValue\": \"Gurudwara, Visakhapatnam\"}','{\"journey_vehicleType\": 5, \"journey_vehicleModal\": \"Swift Desire\", \"journey_vehicleNumber\": \"AP31AB2021\"}',NULL),(6,1001006,'poi.60129546343','poi.60129546343','2021-04-10T10:09',NULL,'2021-04-10T16:39:58.032Z',0,'{\"title\": \"Srikakulam, Andhra Pradesh, India\", \"locationId\": \"place.10500729632604010\", \"landmarkValue\": \"Test pickup landmark\", \"directionsValue\": \"Test directions\", \"completeAddressValue\": \"Test pickup address\"}','{\"title\": \"Visakhapatnam, Andhra Pradesh, India\", \"locationId\": \"place.1657018279024290\", \"landmarkValue\": \"Test dest landmark\", \"directionsValue\": \"Test dest directions\", \"completeAddressValue\": \"Gurudwara, Visakhapatnam\"}','{\"journey_vehicleType\": 3, \"journey_vehicleModal\": \"Swift Desire\", \"journey_vehicleNumber\": \"AP31AB2021\"}',NULL),(7,1001005,'poi.60129546343','poi.60129546343','2021-04-10T10:11',NULL,'2021-04-10T16:41:25.845Z',0,'{\"title\": \"Srikakulam, Andhra Pradesh, India\", \"locationId\": \"place.10500729632604010\", \"landmarkValue\": \"Test pickup landmark\", \"directionsValue\": \"Test directions\", \"completeAddressValue\": \"Test pickup address\"}','{\"title\": \"Visakhapatnam, Andhra Pradesh, India\", \"locationId\": \"place.1657018279024290\", \"landmarkValue\": \"Test dest landmark\", \"directionsValue\": \"Test dest directions\", \"completeAddressValue\": \"Gurudwara, Visakhapatnam\"}','{\"journey_vehicleType\": 4, \"journey_vehicleModal\": \"Swift Desire\", \"journey_vehicleNumber\": \"AP31AB2021\"}',NULL),(8,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','SVC Treewalk, Fortune Kumkum Rd, Sai Pruthvi Enclave, Kondapur, Telangana, India','2021-04-15T12:10',NULL,'2021-04-13T06:46:54.938Z',0,'{\"index\": 1, \"terms\": [{\"value\": \"Amadalavalasa Railway Station Road\", \"offset\": 0}, {\"value\": \"Amadalavalasa\", \"offset\": 36}, {\"value\": \"Andhra Pradesh\", \"offset\": 51}, {\"value\": \"India\", \"offset\": 67}], \"types\": [\"route\", \"geocode\"], \"active\": true, \"latLng\": {\"lat\": 18.4057385, \"lng\": 83.89842019999999}, \"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"locationName\": \"Amadalavalasa Railway Station Road\", \"matchedSubstrings\": [{\"length\": 10, \"offset\": 0}], \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"index\": 0, \"terms\": [{\"value\": \"SVC Treewalk\", \"offset\": 0}, {\"value\": \"Fortune Kumkum Rd\", \"offset\": 14}, {\"value\": \"Sai Pruthvi Enclave\", \"offset\": 33}, {\"value\": \"Kondapur\", \"offset\": 54}, {\"value\": \"Telangana\", \"offset\": 64}, {\"value\": \"India\", \"offset\": 75}], \"types\": [\"premise\", \"establishment\"], \"active\": true, \"latLng\": {\"lat\": 17.461654, \"lng\": 78.344171}, \"placeId\": \"ChIJjdld7KuTyzsRT1DMeWHGhvE\", \"description\": \"SVC Treewalk, Fortune Kumkum Rd, Sai Pruthvi Enclave, Kondapur, Telangana, India\", \"locationName\": \"SVC Treewalk\", \"matchedSubstrings\": [{\"length\": 8, \"offset\": 0}], \"formattedSuggestion\": {\"mainText\": \"SVC Treewalk\", \"secondaryText\": \"Fortune Kumkum Rd, Sai Pruthvi Enclave, Kondapur, Telangana, India\"}}','{\"journey_vehicleType\": 3, \"journey_vehicleModal\": \"dfdfg\", \"journey_vehicleNumber\": \"dfgf\"}',NULL),(9,1001005,'Srikakulam RTC Bus Stand','Gurudwara','2021-04-15T06:51',NULL,'2021-04-13T07:21:52.581Z',0,'{\"latLng\": {\"lat\": 18.3091619, \"lng\": 83.8937279}, \"placeId\": \"ChIJ01j7oCEVPDoRHPVNs8QFbB4\", \"mainText\": \"Srikakulam RTC Bus Stand\", \"description\": \"Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\", \"formattedSuggestion\": {\"mainText\": \"Srikakulam RTC Bus Stand\", \"secondaryText\": \"RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 17.7342224, \"lng\": 83.3072816}, \"placeId\": \"ChIJT9RA8zBDOToRFBzgCuFWiEQ\", \"mainText\": \"Gurudwara\", \"description\": \"Gurudwara, Dwaraka Nagar, Visakhapatnam, Andhra Pradesh, India\", \"formattedSuggestion\": {\"mainText\": \"Gurudwara\", \"secondaryText\": \"Dwaraka Nagar, Visakhapatnam, Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"Swift desire\"}',NULL),(10,1001005,'Amadalavalasa Railway Station Road','Srikakulam RTC Bus Stand','2021-04-14T07:40',NULL,'2021-04-13T14:10:18.870Z',0,'{\"latLng\": {\"lat\": 18.4057385, \"lng\": 83.89842019999999}, \"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 18.3091619, \"lng\": 83.8937279}, \"placeId\": \"ChIJ01j7oCEVPDoRHPVNs8QFbB4\", \"mainText\": \"Srikakulam RTC Bus Stand\", \"description\": \"Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\", \"formattedSuggestion\": {\"mainText\": \"Srikakulam RTC Bus Stand\", \"secondaryText\": \"RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 0, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(11,1001005,'Amadalavalasa Railway Station Road','SVC Treewalk','2021-04-18T06:15',NULL,'2021-04-17T06:47:27.286Z',0,'{\"latLng\": {\"lat\": 18.4057385, \"lng\": 83.89842019999999}, \"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 17.461654, \"lng\": 78.344171}, \"placeId\": \"ChIJjdld7KuTyzsRT1DMeWHGhvE\", \"mainText\": \"SVC Treewalk\", \"description\": \"SVC Treewalk, Fortune Kumkum Rd, Sai Pruthvi Enclave, Kondapur, Telangana, India\", \"formattedSuggestion\": {\"mainText\": \"SVC Treewalk\", \"secondaryText\": \"Fortune Kumkum Rd, Sai Pruthvi Enclave, Kondapur, Telangana, India\"}}','{\"journey_vehicleType\": 3, \"journey_vehicleModal\": \"Indigo Airbus\", \"journey_vehicleNumber\": \"6E-712\"}',NULL),(12,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','SVC Tree Walk, Fortune Kumkum Road, Sai Pruthvi Enclave, Kondapur, Telangana, India','2021-04-18T04:56',NULL,'2021-04-17T11:26:54.425Z',0,'{\"latLng\": {\"lat\": 18.4057385, \"lng\": 83.89842019999999}, \"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 17.461654, \"lng\": 78.344171}, \"placeId\": \"ChIJd0V77KuTyzsRHnphZPJO2tY\", \"mainText\": \"SVC Tree Walk\", \"description\": \"SVC Tree Walk, Fortune Kumkum Road, Sai Pruthvi Enclave, Kondapur, Telangana, India\", \"formattedSuggestion\": {\"mainText\": \"SVC Tree Walk\", \"secondaryText\": \"Fortune Kumkum Road, Sai Pruthvi Enclave, Kondapur, Telangana, India\"}}','{\"journey_vehicleType\": 1, \"journey_vehicleModal\": \"Orange travels\"}',NULL),(13,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','Rotta Valasa, Andhra Pradesh, India','2021-04-18T09:16',NULL,'2021-04-17T15:46:52.057Z',0,'{\"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"addressComponents\": [{\"types\": [\"route\"], \"long_name\": \"Amadalavalasa Railway Station Road\", \"short_name\": \"Amadalavalasa Railway Station Rd\"}, {\"types\": [\"political\", \"sublocality\", \"sublocality_level_1\"], \"long_name\": \"Amadalavalasa\", \"short_name\": \"Amadalavalasa\"}, {\"types\": [\"locality\", \"political\"], \"long_name\": \"Chinnajonnavalasa\", \"short_name\": \"Chinnajonnavalasa\"}, {\"types\": [\"administrative_area_level_2\", \"political\"], \"long_name\": \"Srikakulam\", \"short_name\": \"Srikakulam\"}, {\"types\": [\"administrative_area_level_1\", \"political\"], \"long_name\": \"Andhra Pradesh\", \"short_name\": \"AP\"}, {\"types\": [\"country\", \"political\"], \"long_name\": \"India\", \"short_name\": \"IN\"}, {\"types\": [\"postal_code\"], \"long_name\": \"532185\", \"short_name\": \"532185\"}], \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJq2Axrc9pPDoRI_h2QjvouTQ\", \"mainText\": \"Rotta Valasa\", \"description\": \"Rotta Valasa, Andhra Pradesh, India\", \"addressComponents\": [{\"types\": [\"locality\", \"political\"], \"long_name\": \"Rotta Valasa\", \"short_name\": \"Rotta Valasa\"}, {\"types\": [\"administrative_area_level_2\", \"political\"], \"long_name\": \"Srikakulam\", \"short_name\": \"Srikakulam\"}, {\"types\": [\"administrative_area_level_1\", \"political\"], \"long_name\": \"Andhra Pradesh\", \"short_name\": \"AP\"}, {\"types\": [\"country\", \"political\"], \"long_name\": \"India\", \"short_name\": \"IN\"}, {\"types\": [\"postal_code\"], \"long_name\": \"532190\", \"short_name\": \"532190\"}], \"formattedSuggestion\": {\"mainText\": \"Rotta Valasa\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 0, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(14,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India','2021-04-17T09:43',NULL,'2021-04-17T16:27:01.722Z',0,'{\"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJ01j7oCEVPDoRHPVNs8QFbB4\", \"mainText\": \"Srikakulam RTC Bus Stand\", \"description\": \"Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam RTC Bus Stand\", \"secondaryText\": \"RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 1, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(15,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India','2021-04-19T00:38',NULL,'2021-04-19T06:09:38.505Z',0,'{\"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJ01j7oCEVPDoRHPVNs8QFbB4\", \"mainText\": \"Srikakulam RTC Bus Stand\", \"description\": \"Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam RTC Bus Stand\", \"secondaryText\": \"RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 0, \"journey_vehicleModal\": \"Honda shine\", \"journey_vehicleNumber\": \"AP39 JE 9801\"}',NULL),(16,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India','2021-04-24T05:31',NULL,'2021-04-24T12:02:06.388Z',0,'{\"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJ01j7oCEVPDoRHPVNs8QFbB4\", \"mainText\": \"Srikakulam RTC Bus Stand\", \"description\": \"Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam RTC Bus Stand\", \"secondaryText\": \"RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 0, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(17,1001005,'Vishakhapatnam Railway Station, Railway Quarters, Railway New Colony, Visakhapatnam, Andhra Pradesh, India','Guntur Bus Stand, N.T.R Bus Station Entrance Road, Coastal Andhra Region, Thamma Ranga Reddy Nagar, Guntur, Andhra Pradesh, India','2021-04-26T06:20',NULL,'2021-04-25T09:51:08.792Z',0,'{\"placeId\": \"ChIJNTTfPt5COToRLe7UKJC8gQQ\", \"mainText\": \"Visakhapatnam Railway Station\", \"description\": \"Visakhapatnam Railway Station, Railway Quarters, Railway New Colony, Visakhapatnam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Visakhapatnam Railway Station\", \"secondaryText\": \"Railway Quarters, Railway New Colony, Visakhapatnam, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJY0d2abUKSjoRqmvKk3vpYk0\", \"mainText\": \"Guntur Bus Stand\", \"description\": \"Guntur Bus Stand, N.T.R Bus Station Entrance Road, Coastal Andhra Region, Thamma Ranga Reddy Nagar, Guntur, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Guntur Bus Stand\", \"secondaryText\": \"N.T.R Bus Station Entrance Road, Coastal Andhra Region, Thamma Ranga Reddy Nagar, Guntur, Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 1, \"journey_vehicleModal\": \"RTC bus\", \"journey_vehicleNumber\": \"Volvo\"}',NULL),(18,1001005,'Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India','Vijayawada, Andhra Pradesh, India','2021-04-25T04:50',NULL,'2021-04-25T11:21:14.801Z',0,'{\"placeId\": \"ChIJ01j7oCEVPDoRHPVNs8QFbB4\", \"mainText\": \"Srikakulam RTC Bus Stand\", \"description\": \"Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam RTC Bus Stand\", \"secondaryText\": \"RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJS5QtSPnvNToRZQJKq4R-m5M\", \"mainText\": \"Vijayawada\", \"description\": \"Vijayawada, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Vijayawada\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 4, \"journey_vehicleModal\": \"Starting from SKLM station\", \"journey_vehicleNumber\": \"Prashanti express\"}',NULL),(19,1001005,'Srikakulam, Andhra Pradesh, India','Guntur, Andhra Pradesh, India','2021-04-25T05:01',NULL,'2021-04-25T11:32:07.247Z',0,'{\"placeId\": \"ChIJIXNz8Q4VPDoRt1OJiRHPRQo\", \"mainText\": \"Srikakulam\", \"description\": \"Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJhXd4sVx1SjoRlObxkN2ZeZ8\", \"mainText\": \"Guntur\", \"description\": \"Guntur, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Guntur\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"Swift\"}',NULL),(20,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','Ponnur, Andhra Pradesh, India','2021-04-26T06:14',NULL,'2021-04-25T11:43:19.568Z',0,'{\"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJ4epjxWARSjoRroSMy962bpg\", \"mainText\": \"Ponnur\", \"description\": \"Ponnur, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Ponnur\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"Swift desire\"}',NULL),(21,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','Ponnur, Andhra Pradesh, India','2021-04-26T05:18',NULL,'2021-04-25T11:48:32.337Z',0,'{\"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJ4epjxWARSjoRroSMy962bpg\", \"mainText\": \"Ponnur\", \"description\": \"Ponnur, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Ponnur\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"swift desire\"}',NULL),(22,1001005,'Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India','Visakhapatnam, Andhra Pradesh, India','2021-04-26T10:15',NULL,'2021-04-25T16:45:53.536Z',0,'{\"placeId\": \"EkhBbWFkYWxhdmFsYXNhIFJhaWx3YXkgU3RhdGlvbiBSb2FkLCBBbWFkYWxhdmFsYXNhLCBBbmRocmEgUHJhZGVzaCwgSW5kaWEiLiosChQKEgmNKEo3N2o8OhHIRbh7I65RCBIUChIJgckhEztqPDoR5khx18aMTh0\", \"mainText\": \"Amadalavalasa Railway Station Road\", \"description\": \"Amadalavalasa Railway Station Road, Amadalavalasa, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa Railway Station Road\", \"secondaryText\": \"Amadalavalasa, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJP5fmiRNDOToRaIRJlQPC2ZI\", \"mainText\": \"Visakhapatnam\", \"description\": \"Visakhapatnam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Visakhapatnam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"Maruti Suzuki ertiga 2021\", \"journey_vehicleNumber\": \"AP01 BE 8055\"}','{\"1001008\": 1624625754056}'),(23,1001005,'Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India','Visakhapatnam, Andhra Pradesh, India','2021-05-01T10:08',NULL,'2021-05-01T04:38:01.689Z',0,'{\"placeId\": \"ChIJ01j7oCEVPDoRHPVNs8QFbB4\", \"mainText\": \"Srikakulam RTC Bus Stand\", \"description\": \"Srikakulam RTC Bus Stand, RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam RTC Bus Stand\", \"secondaryText\": \"RTC Complex Area, Shanti Nagar Colony, Balaga, Srikakulam, Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJP5fmiRNDOToRaIRJlQPC2ZI\", \"mainText\": \"Visakhapatnam\", \"description\": \"Visakhapatnam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Visakhapatnam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(24,1001005,'Srikakulam, Andhra Pradesh, India','Kondapur, Telangana, India','2021-05-02T05:47',NULL,'2021-05-02T10:17:43.926Z',0,'{\"placeId\": \"ChIJIXNz8Q4VPDoRt1OJiRHPRQo\", \"mainText\": \"Srikakulam\", \"description\": \"Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJa6NJKMmTyzsR-hJVkDTADd4\", \"mainText\": \"Kondapur\", \"description\": \"Kondapur, Telangana, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Kondapur\", \"secondaryText\": \"Telangana, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(25,1001005,'Srikakulam, Andhra Pradesh, India','Kondapur, Telangana, India','2021-05-04T09:56',NULL,'2021-05-03T16:26:21.655Z',0,'{\"placeId\": \"ChIJIXNz8Q4VPDoRt1OJiRHPRQo\", \"mainText\": \"Srikakulam\", \"description\": \"Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJa6NJKMmTyzsR-hJVkDTADd4\", \"mainText\": \"Kondapur\", \"description\": \"Kondapur, Telangana, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Kondapur\", \"secondaryText\": \"Telangana, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(26,1001005,'Srikakulam, Andhra Pradesh, India','Vijayawada, Andhra Pradesh, India','2021-05-08T11:53',NULL,'2021-05-08T06:22:16.833Z',0,'{\"placeId\": \"ChIJIXNz8Q4VPDoRt1OJiRHPRQo\", \"mainText\": \"Srikakulam\", \"description\": \"Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"placeId\": \"ChIJS5QtSPnvNToRZQJKq4R-m5M\", \"mainText\": \"Vijayawada\", \"description\": \"Vijayawada, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Vijayawada\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(27,1001006,'Srikakulam, Andhra Pradesh, India','Pune, Maharashtra, India','2021-05-08T06:30',NULL,'2021-05-08T13:00:52.935Z',0,'{\"latLng\": {\"lat\": 18.2949165, \"lng\": 83.89380179999999}, \"placeId\": \"ChIJIXNz8Q4VPDoRt1OJiRHPRQo\", \"mainText\": \"Srikakulam\", \"description\": \"Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 18.5204303, \"lng\": 73.8567437}, \"placeId\": \"ChIJARFGZy6_wjsRQ-Oenb9DjYI\", \"mainText\": \"Pune\", \"description\": \"Pune, Maharashtra, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Pune\", \"secondaryText\": \"Maharashtra, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(28,1001006,'Vijayawada, Andhra Pradesh, India','Guntur, Andhra Pradesh, India','2021-05-09T08:14',NULL,'2021-05-08T14:45:02.288Z',0,'{\"latLng\": {\"lat\": 16.5061743, \"lng\": 80.6480153}, \"placeId\": \"ChIJS5QtSPnvNToRZQJKq4R-m5M\", \"mainText\": \"Vijayawada\", \"description\": \"Vijayawada, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Vijayawada\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 16.3066525, \"lng\": 80.4365402}, \"placeId\": \"ChIJhXd4sVx1SjoRlObxkN2ZeZ8\", \"mainText\": \"Guntur\", \"description\": \"Guntur, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Guntur\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(29,1001006,'Srikakulam, Andhra Pradesh, India','Vijayawada, Andhra Pradesh, India','2021-05-14T12:46',NULL,'2021-05-14T07:17:07.928Z',0,'{\"latLng\": {\"lat\": 18.2949165, \"lng\": 83.89380179999999}, \"placeId\": \"ChIJIXNz8Q4VPDoRt1OJiRHPRQo\", \"mainText\": \"Srikakulam\", \"description\": \"Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 16.5061743, \"lng\": 80.6480153}, \"placeId\": \"ChIJS5QtSPnvNToRZQJKq4R-m5M\", \"mainText\": \"Vijayawada\", \"description\": \"Vijayawada, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Vijayawada\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 2, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(30,1001006,'Srikakulam, Andhra Pradesh, India','Hyderabad, Telangana, India','2021-05-15T08:24',NULL,'2021-05-14T14:54:20.069Z',0,'{\"latLng\": {\"lat\": 18.2949165, \"lng\": 83.89380179999999}, \"placeId\": \"ChIJIXNz8Q4VPDoRt1OJiRHPRQo\", \"mainText\": \"Srikakulam\", \"description\": \"Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 17.385044, \"lng\": 78.486671}, \"placeId\": \"ChIJx9Lr6tqZyzsRwvu6koO3k64\", \"mainText\": \"Hyderabad\", \"description\": \"Hyderabad, Telangana, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Hyderabad\", \"secondaryText\": \"Telangana, India\"}}','{\"journey_vehicleType\": 3, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(31,1001006,'Visakhapatnam, Andhra Pradesh, India','Indore, Madhya Pradesh, India','2021-05-16T04:38',NULL,'2021-05-15T11:08:34.627Z',0,'{\"latLng\": {\"lat\": 17.6868159, \"lng\": 83.2184815}, \"placeId\": \"ChIJP5fmiRNDOToRaIRJlQPC2ZI\", \"mainText\": \"Visakhapatnam\", \"description\": \"Visakhapatnam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Visakhapatnam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 22.7195687, \"lng\": 75.8577258}, \"placeId\": \"ChIJ2w1BG638YjkR9EBiNdrEbgk\", \"mainText\": \"Indore\", \"description\": \"Indore, Madhya Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Indore\", \"secondaryText\": \"Madhya Pradesh, India\"}}','{\"journey_vehicleType\": 4, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(32,1001005,'Visakhapatnam, Andhra Pradesh, India','Mannar, Kerala, India','2021-05-17T07:04',NULL,'2021-05-16T13:34:08.770Z',0,'{\"latLng\": {\"lat\": 17.6868159, \"lng\": 83.2184815}, \"placeId\": \"ChIJP5fmiRNDOToRaIRJlQPC2ZI\", \"mainText\": \"Visakhapatnam\", \"description\": \"Visakhapatnam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Visakhapatnam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 9.3171351, \"lng\": 76.5343721}, \"placeId\": \"ChIJZQO1WpohBjsRxbbm86_GuHU\", \"mainText\": \"Mannar\", \"description\": \"Mannar, Kerala, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Mannar\", \"secondaryText\": \"Kerala, India\"}}','{\"journey_vehicleType\": 4, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(33,1001005,'Srikakulam, Andhra Pradesh, India','Mannar, Kerala, India','2021-05-17T07:06',NULL,'2021-05-16T13:36:14.726Z',0,'{\"latLng\": {\"lat\": 18.2949165, \"lng\": 83.89380179999999}, \"placeId\": \"ChIJIXNz8Q4VPDoRt1OJiRHPRQo\", \"mainText\": \"Srikakulam\", \"description\": \"Srikakulam, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Srikakulam\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 9.3171351, \"lng\": 76.5343721}, \"placeId\": \"ChIJZQO1WpohBjsRxbbm86_GuHU\", \"mainText\": \"Mannar\", \"description\": \"Mannar, Kerala, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Mannar\", \"secondaryText\": \"Kerala, India\"}}','{\"journey_vehicleType\": 4, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL),(34,1001008,'Amadalavalasa, Andhra Pradesh, India','Vizianagaram, Andhra Pradesh, India','2021-06-08T06:15',NULL,'2021-06-06T05:48:53.694Z',0,'{\"latLng\": {\"lat\": 18.4101166, \"lng\": 83.902951}, \"placeId\": \"ChIJLzzVQe96PDoRgcz0DAR8sAQ\", \"mainText\": \"Amadalavalasa\", \"description\": \"Amadalavalasa, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Amadalavalasa\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"latLng\": {\"lat\": 18.1066576, \"lng\": 83.39555059999999}, \"placeId\": \"ChIJX4jw_BflOzoRjR0pX7sEUeg\", \"mainText\": \"Vizianagaram\", \"description\": \"Vizianagaram, Andhra Pradesh, India\", \"addressComponents\": {}, \"formattedSuggestion\": {\"mainText\": \"Vizianagaram\", \"secondaryText\": \"Andhra Pradesh, India\"}}','{\"journey_vehicleType\": 0, \"journey_vehicleModal\": \"\", \"journey_vehicleNumber\": \"\"}',NULL);
/*!40000 ALTER TABLE `ofc_carriers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-30 15:33:15