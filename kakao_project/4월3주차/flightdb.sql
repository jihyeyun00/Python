-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.12-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- flightdb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `flightdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `flightdb`;

-- 테이블 flightdb.flight_schedule 구조 내보내기
CREATE TABLE IF NOT EXISTS `flight_schedule` (
  `airline_name` varchar(100) DEFAULT NULL,
  `departure_city` varchar(100) DEFAULT NULL,
  `arrival_city` varchar(100) DEFAULT NULL,
  `flight_num` varchar(10) DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `mon_yn` char(1) DEFAULT NULL,
  `tue_yn` char(1) DEFAULT NULL,
  `wed_yn` char(1) DEFAULT NULL,
  `thu_yn` char(1) DEFAULT NULL,
  `fri_yn` char(1) DEFAULT NULL,
  `sat_yn` char(1) DEFAULT NULL,
  `sun_yn` char(1) DEFAULT NULL,
  `create_date` datetime DEFAULT sysdate(),
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 flightdb.flight_status 구조 내보내기
CREATE TABLE IF NOT EXISTS `flight_status` (
  `flight_num` varchar(10) DEFAULT NULL,
  `airline_name` varchar(100) DEFAULT NULL,
  `airport_code` varchar(100) DEFAULT NULL,
  `city_code` varchar(100) DEFAULT NULL,
  `arrived_airport_name` varchar(100) DEFAULT NULL,
  `boarding_airport_name` varchar(100) DEFAULT NULL,
  `scheduled_time` time DEFAULT NULL,
  `estimated_time` time DEFAULT NULL,
  `inout_code` char(1) DEFAULT NULL,
  `flight_status_eng` varchar(100) DEFAULT NULL,
  `flight_status_kor` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT sysdate(),
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
