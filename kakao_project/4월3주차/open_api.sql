-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.6-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- open_api 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `open_api` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `open_api`;

-- 테이블 open_api.get_arrival_schedule_list 구조 내보내기
CREATE TABLE IF NOT EXISTS `get_arrival_schedule_list` (
  `airline_name` varchar(50) DEFAULT NULL,
  `departure_city` varchar(50) DEFAULT NULL,
  `flight_num` varchar(50) DEFAULT NULL,
  `arrival_time` varchar(50) DEFAULT NULL,
  `departure_time` varchar(50) DEFAULT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `friday_yn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 open_api.get_arrival_schedule_list:~0 rows (대략적) 내보내기
DELETE FROM `get_arrival_schedule_list`;
/*!40000 ALTER TABLE `get_arrival_schedule_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `get_arrival_schedule_list` ENABLE KEYS */;

-- 테이블 open_api.get_departure_schedule_list 구조 내보내기
CREATE TABLE IF NOT EXISTS `get_departure_schedule_list` (
  `airline_name` varchar(100) DEFAULT NULL,
  `arrival_city` varchar(100) DEFAULT NULL,
  `flight_num` varchar(100) DEFAULT NULL,
  `arrival_time` varchar(100) DEFAULT NULL,
  `departure_time` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `friday_yn` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 open_api.get_departure_schedule_list:~0 rows (대략적) 내보내기
DELETE FROM `get_departure_schedule_list`;
/*!40000 ALTER TABLE `get_departure_schedule_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `get_departure_schedule_list` ENABLE KEYS */;

-- 테이블 open_api.get_flight_status_list 구조 내보내기
CREATE TABLE IF NOT EXISTS `get_flight_status_list` (
  `flight_num` varchar(100) DEFAULT NULL,
  `airline_name` varchar(100) DEFAULT NULL,
  `airport_code` varchar(100) DEFAULT NULL,
  `city_code` varchar(100) DEFAULT NULL,
  `arrived_airport_name` varchar(100) DEFAULT NULL,
  `boarding_airport_name` varchar(100) DEFAULT NULL,
  `scheduled_time` varchar(100) DEFAULT NULL,
  `estimated_time` varchar(100) DEFAULT NULL,
  `inout_code` varchar(100) DEFAULT NULL,
  `flight_status_eng` varchar(100) DEFAULT NULL,
  `flight_status_kor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 open_api.get_flight_status_list:~0 rows (대략적) 내보내기
DELETE FROM `get_flight_status_list`;
/*!40000 ALTER TABLE `get_flight_status_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `get_flight_status_list` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
