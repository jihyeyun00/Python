CREATE TABLE `authors` (
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`address` VARCHAR(50) NULL DEFAULT NULL
)
COLLATE='utf8_general_ci'
ENGINE=InnoDBjejujejujeju
;

#__CRUD(INSERT INTO, SELECT, UPDATE, DELETE)문 사용
insert INTO authors(NAME,address) values("대한이","서울시");
insert INTO authors(NAME,address) VALUES("민국이","대전시");
insert INTO authors(NAME,address) VALUES("만세","충주시");

#데이터베이스(외부접속단위),테이블, 필드(변수이름),레코드
#*;모두다
SELECT*FROM authors;
SELECT*FROM authors WHERE NAME="대한이"; #== 쓰지않음 =하나만씀 #명령어는 대소문자를 구별하지않음 ""안에 쓰는 것들은 대소문자 구별
SELECT address FROM authors WHERE NAME="만세";

#update set
UPDATE authors SET NAME="대한민국" WHERE NAME="대한이";

DELETE FROM authors WHERE NAME="만세";

#문제:3인분 성적을 students 테이블에 입력하고 출력해보시오
#이름 국어 영어 수학 총점 평균
#대한이 90,90,90
#민국이 80,80,81
#만세 100,100,100
INSERT INTO students(NAME,kor,eng,mat) VALUES('대한이',90,90,90);
INSERT INTO students(NAME,kor,eng,mat) VALUES('민국이',80,80,81);
INSERT INTO students(NAME,kor,eng,mat) VALUES('만세',100,100,100);

SELECT*FROM students WHERE NAME="대한이";



