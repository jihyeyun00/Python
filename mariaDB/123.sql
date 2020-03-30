-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.11-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- jeju 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jeju` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jeju`;

-- 테이블 jeju.authors 구조 내보내기
CREATE TABLE IF NOT EXISTS `authors` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 jeju.goods 구조 내보내기
CREATE TABLE IF NOT EXISTS `goods` (
  `code` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `su` int(11) DEFAULT NULL,
  `dan` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Primary key : 중복 불가, 외부에서 참조가 가능한 키';

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 jeju.korea 구조 내보내기
CREATE TABLE IF NOT EXISTS `korea` (
  `name` int(11) DEFAULT NULL,
  `열 2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 jeju.sales 구조 내보내기
CREATE TABLE IF NOT EXISTS `sales` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `userID` char(3) NOT NULL,
  `prodName` varchar(50) DEFAULT NULL,
  `groupName` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `userID` (`userID`),
  CONSTRAINT `FK__user_info` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 jeju.school 구조 내보내기
CREATE TABLE IF NOT EXISTS `school` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `schoolname` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `schoolcode` char(10) NOT NULL,
  `studentcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`schoolcode`),
  KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 jeju.student 구조 내보내기
CREATE TABLE IF NOT EXISTS `student` (
  `bunho` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `kor` tinyint(4) DEFAULT NULL,
  `mat` tinyint(4) DEFAULT NULL,
  `eng` tinyint(4) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `average` float DEFAULT NULL,
  `grade` char(2) DEFAULT NULL,
  `schoolcode` char(10) DEFAULT NULL,
  PRIMARY KEY (`bunho`),
  KEY `schoolcode` (`schoolcode`),
  CONSTRAINT `FK__school` FOREIGN KEY (`schoolcode`) REFERENCES `school` (`schoolcode`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 jeju.student2 구조 내보내기
CREATE TABLE IF NOT EXISTS `student2` (
  `num` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `addr` varchar(15) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 jeju.students 구조 내보내기
CREATE TABLE IF NOT EXISTS `students` (
  `name` varchar(50) DEFAULT NULL,
  `kor` float DEFAULT NULL,
  `eng` float DEFAULT NULL,
  `math` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `avg` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 프로시저 jeju.student_insert 구조 내보내기
DELIMITER //
CREATE PROCEDURE `student_insert`(
	IN `name` VARCHAR(50),
	IN `kor` INT,
	IN `mat` INT,
	IN `eng` INT,
	IN `schoolcode` CHAR(10),
	OUT `result` INT
)
BEGIN
	DECLARE exit handler for SQLEXCEPTION
	BEGIN
		ROLLBACK;
		SET result = -1;
	END;
	
	START TRANSACTION;
		INSERT INTO student(name, kor, mat, eng, schoolcode)
	        VALUES (name, kor, mat, eng, schoolcode);
	COMMIT;
	
	SET result = 0;
END//
DELIMITER ;

-- 프로시저 jeju.student_select 구조 내보내기
DELIMITER //
CREATE PROCEDURE `student_select`()
BEGIN
	SELECT * FROM student;
END//
DELIMITER ;

-- 프로시저 jeju.student_sum 구조 내보내기
DELIMITER //
CREATE PROCEDURE `student_sum`()
BEGIN
	DROP TABLE IF EXISTS sungjuk_hab;
	
	CREATE TABLE sungjuk_hab(korhab float, mathab float, enghab float) AS
			SELECT sum(kor) AS korhab, sum(mat) AS mathab, sum(eng) AS enghab 
			  FROM student;
		
	INSERT INTO sungjuk_hab(korhab, mathab, enghab)
		  SELECT round(avg(kor), 2), round(avg(mat), 2), round(avg(eng), 2) 
		    FROM student;
		  
	SELECT * FROM sungjuk_hab;
END//
DELIMITER ;

-- 프로시저 jeju.student_updateone 구조 내보내기
DELIMITER //
CREATE PROCEDURE `student_updateone`()
BEGIN
	DECLARE _done INT DEFAULT FALSE; -- 무한루프 종료조건
	DECLARE name_var VARCHAR(20);    -- 하나의 데이터를 처리하기 위한 변수
	DECLARE kor_var INT;
	DECLARE mat_var INT;
	DECLARE eng_var INT;
	
	-- CURSOR : 데이터를 가리키는 위치
	DECLARE cursor_student CURSOR FOR
		SELECT name, kor, mat, eng FROM student;
	
	DECLARE continue handler FOR NOT FOUND
		SET _done = TRUE;
		
	OPEN cursor_student;
		
		REPEAT
			-- FETCH : cursor에서 1개의 record를 가져옴
			FETCH cursor_student INTO name_var, kor_var, mat_var, eng_var; -- INTO 이후 변수에 cursor에 있는 값을 넣음
			
			IF NOT _done THEN
				UPDATE student
				   SET kor = kor_var + 1
				     , mat = mat_var + 1
				     , eng = eng_var + 1
				 WHERE name = name_var;
				
				 SET _done = FALSE;
			END IF;
			
			UNTIL _done -- 종료조건 _done=TRUE가 될 때까지 무한루프
		END REPEAT;
	
	CLOSE cursor_student;
	
END//
DELIMITER ;

-- 프로시저 jeju.student_update_name 구조 내보내기
DELIMITER //
CREATE PROCEDURE `student_update_name`(
	IN `old_name` VARCHAR(50),
	IN `new_name` VARCHAR(50),
	OUT `result` INT


)
BEGIN
	DECLARE cnt int default 0; -- cnt = 0;
	BEGIN 
		SELECT COUNT(*) INTO cnt FROM student WHERE name = old_name;
	END;
	
	IF cnt > 0 THEN
			UPDATE student
			   SET name = new_name
			 WHERE name = old_name;

		 SET result := 0;
	ELSE 
		SET result := -1;
	END IF;
END//
DELIMITER ;

-- 테이블 jeju.sungjuk_hab 구조 내보내기
CREATE TABLE IF NOT EXISTS `sungjuk_hab` (
  `korhab` float DEFAULT NULL,
  `mathab` float DEFAULT NULL,
  `enghab` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 테이블 jeju.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `userID` char(3) NOT NULL DEFAULT 'AAA',
  `name` varchar(10) DEFAULT NULL,
  `birthYear` int(11) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `mobile1` char(3) DEFAULT NULL,
  `mobile2` char(8) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `mDate` date DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

-- 트리거 jeju.student_before_insert 구조 내보내기
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `student_before_insert` BEFORE INSERT ON `student` FOR EACH ROW BEGIN
	SET new.total   = new.kor + new.mat + new.eng; -- old.: 입력된 데이터, new.: 새로운 데이터, SET : 변수에 값을 대입할 때 대입문 앞에 씀
	SET new.average = round(new.total/3, 2);
	
	IF     new.average >= 90 THEN SET new.grade = 'A';
	ELSEIF new.average >= 80 THEN SET new.grade = 'B';
	ELSEIF new.average >= 70 THEN SET new.grade = 'C';
	ELSEIF new.average >= 60 THEN SET new.grade = 'D';
	ELSE 									SET new.grade = 'F';
	END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 트리거 jeju.student_before_update 구조 내보내기
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `student_before_update` BEFORE UPDATE ON `student` FOR EACH ROW BEGIN
	SET new.total   = new.kor + new.mat + new.eng; -- old.: 입력된 데이터, new.: 새로운 데이터, SET : 변수에 값을 대입할 때 대입문 앞에 씀
	SET new.average = round(new.total/3, 2);
	
	IF     new.average >= 90 THEN SET new.grade = 'A';
	ELSEIF new.average >= 80 THEN SET new.grade = 'B';
	ELSEIF new.average >= 70 THEN SET new.grade = 'C';
	ELSEIF new.average >= 60 THEN SET new.grade = 'D';
	ELSE 									SET new.grade = 'F';
	END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
