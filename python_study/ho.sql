-- --------------------------------------------------------
-- 호스트:                          172.18.31.74
-- 서버 버전:                        10.4.11-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- practicedb 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `practicedb`;
CREATE DATABASE IF NOT EXISTS `practicedb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `practicedb`;

-- 테이블 practicedb.search_tb 구조 내보내기
DROP TABLE IF EXISTS `search_tb`;
CREATE TABLE IF NOT EXISTS `search_tb` (
  `search_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `contents` varchar(10000) DEFAULT NULL,
  `search_date` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`search_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- 테이블 데이터 practicedb.search_tb:~15 rows (대략적) 내보내기
/*!40000 ALTER TABLE `search_tb` DISABLE KEYS */;
INSERT INTO `search_tb` (`search_id`, `title`, `contents`, `search_date`, `url`) VALUES
	(9, '<b>이효리</b> - 나무위키', '<b>이효리</b>의 주요 수상 이력 [ 펼치기 · 접기 ] 가요대상 대상 장나라 Sweet Dream (2002년) ▶ <b>이효리</b> 10 Minutes (2003년) ▶ 비 It&#39;s Raining (2004년) 가요대전 대상 BoA No.1 (2002년) ▶ <b>이효리</b> 10 Minutes...', '2020-02-09T00:00:00.000+09:00', 'https://namu.wiki/w/%EC%9D%B4%ED%9A%A8%EB%A6%AC'),
	(10, '<b>이효리</b>', '언론정보대학원 문화콘텐츠학 석사과정2006 국민대학교 연극영화학 학사 서문여자고등학교 서문여자중학교 <b>이효리</b>, 옥주현, 이진, 성유리 ‘핑클’ 데뷔 21주년 기념 베스트 앨범 발매 2019.07.22 3023 &#39;영원한...', '2013-06-15T00:00:00.000+09:00', 'http://www.playdb.co.kr/artistdb/detail.asp?ManNo=11456'),
	(11, '셔누, <b>이효리</b>와 밀착 스킨십? 알고보니 <b>이효리</b> 백댄서 출신', '라마바사 가나다라마바사 가나다라마바사 가나다라마바사 HOME 라이프 방송/연예 셔누, <b>이효리</b>와 밀착 스킨십? 알고보니 <b>이효리</b> 백댄서 출신 황미진 승인 2018.07.14 21:19 댓글 0 가나다라마바사 가나다라마바사...', '2020-02-17T00:00:00.000+09:00', 'http://www.whitepaper.co.kr/news/articleView.html?idxno=102815'),
	(12, '안혜경 파격화보 속에서 &#39;<b>이효리</b>&#39;가 보인다?', '파격화보가 놀랍다는 평가다. 안혜경 파격화보 속에는 그간 볼 수 없었던 관능미가 풍겨져 절친 <b>이효리</b> 못지 않은 오라를 자아내게 했다. 실제 연예계 소문난 79년생 동갑내기인 안혜경과 <b>이효리</b>는 탁월한 패션...', '2020-02-20T04:56:33.000+09:00', 'http://www.vop.co.kr/view.php?cid=A00000581700'),
	(13, '<b>이효리</b> 한의사, 그녀의 이상형은 이병헌 목소리의 남자', '<b>이효리</b> 한의사ⓒ유앤아이 방송화면 가수 <b>이효리</b>가 한의사와 맞선에 대한 일화를 고백했다. <b>이효리</b>는 15일 방송된 SBS &#39;정재형 <b>이효리</b>의 유앤아이&#39;에서 게스트와 결혼적령기에 대해 이야기를 나누던 중 &#34;한의사와...', '2020-02-16T16:05:21.000+09:00', 'http://www.vop.co.kr/A00000550542.html'),
	(34, '<b>이효리</b> - 나무위키', '<b>이효리</b>의 주요 수상 이력 [ 펼치기 · 접기 ] 가요대상 대상 장나라 Sweet Dream (2002년) ▶ <b>이효리</b> 10 Minutes (2003년) ▶ 비 It&#39;s Raining (2004년) 가요대전 대상 BoA No.1 (2002년) ▶ <b>이효리</b> 10 Minutes...', '2020-02-09T00:00:00.000+09:00', 'https://namu.wiki/w/%EC%9D%B4%ED%9A%A8%EB%A6%AC'),
	(35, '<b>이효리</b>', '언론정보대학원 문화콘텐츠학 석사과정2006 국민대학교 연극영화학 학사 서문여자고등학교 서문여자중학교 <b>이효리</b>, 옥주현, 이진, 성유리 ‘핑클’ 데뷔 21주년 기념 베스트 앨범 발매 2019.07.22 3023 &#39;영원한...', '2013-06-15T00:00:00.000+09:00', 'http://www.playdb.co.kr/artistdb/detail.asp?ManNo=11456'),
	(36, '안혜경 파격화보 속에서 &#39;<b>이효리</b>&#39;가 보인다?', '파격화보가 놀랍다는 평가다. 안혜경 파격화보 속에는 그간 볼 수 없었던 관능미가 풍겨져 절친 <b>이효리</b> 못지 않은 오라를 자아내게 했다. 실제 연예계 소문난 79년생 동갑내기인 안혜경과 <b>이효리</b>는 탁월한 패션...', '2020-02-21T14:02:27.000+09:00', 'http://www.vop.co.kr/view.php?cid=A00000581700'),
	(37, '셔누, <b>이효리</b>와 밀착 스킨십? 알고보니 <b>이효리</b> 백댄서 출신', '라마바사 가나다라마바사 가나다라마바사 가나다라마바사 HOME 라이프 방송/연예 셔누, <b>이효리</b>와 밀착 스킨십? 알고보니 <b>이효리</b> 백댄서 출신 황미진 승인 2018.07.14 21:19 댓글 0 가나다라마바사 가나다라마바사...', '2020-02-17T00:00:00.000+09:00', 'http://www.whitepaper.co.kr/news/articleView.html?idxno=102815'),
	(38, '<b>이효리</b> 한의사, 그녀의 이상형은 이병헌 목소리의 남자', '<b>이효리</b> 한의사ⓒ유앤아이 방송화면 가수 <b>이효리</b>가 한의사와 맞선에 대한 일화를 고백했다. <b>이효리</b>는 15일 방송된 SBS &#39;정재형 <b>이효리</b>의 유앤아이&#39;에서 게스트와 결혼적령기에 대해 이야기를 나누던 중 &#34;한의사와...', '2020-02-16T16:05:21.000+09:00', 'http://www.vop.co.kr/A00000550542.html'),
	(39, '[트렌드를알려주는여자] 꽃보다 아름다운 <b>이효리</b>가 전하는 여자 봄 패션 소식 - 1boon', '봄봄봄 봄이 왔어요~* 봄의 여신 &#39;<b>이효리</b>&#39;가 꽃을 들고 꽃보다 아름다운 자태를 뽐냈는데요 ! 마리끌레르 3월호에서 공개된 이번 봄 화보는 <b>이효리</b>와 특별한 인연인 브랜드, &#39;쟈딕앤볼테르&#39;와 함께했다고 해요...', '2020-02-21T12:02:14.000+09:00', 'https://1boon.kakao.com/tag/2212'),
	(40, '&#39;놀면 뭐하니&#39; 유재석, <b>이효리</b>♥?이상순 부부 등장에 &#39;안절부절&#39;[Oh!쎈 예고]', '[OSEN=김보라 기자] &#39;라섹&#39; 유재석 사장님이 만만치 않은 &#39;손님&#39; <b>이효리</b>-이상순 부부를 만난다. 유재석은 온탕과 냉탕을 오가며 종잡을 수 없는 매력을 뽐내는 <b>이효리</b>와의 재회에 도리어 서운함을 느꼈다고 해...', '2020-02-08T00:00:00.000+09:00', 'http://www.mimint.co.kr/article/board_view.asp?strBoardID=news&bbstype=S1N13&bidx=2097362&page=1&pageblock=1'),
	(41, '&#39;놀면뭐하니&#39; 유재석, <b>이효리</b>♥이상순과 &#39;인생케미&#39;→EBS &#39;최요비&#39; 첫출연 (feat.펭수 콜라보) [종합]', '[OSEN=이승훈 기자] &#39;놀면 뭐하니?&#39; 유재석이 &#39;국민MC&#39;의 입지를 확실히 굳혔다. &#39;유산슬라면&#39;으로 <b>이효리</b>, 이상순은 물론, EBS에 첫 출연하면서 &#39;최고의 요리 비결&#39;과 펭수까지 사로잡았기 때문. 8일 오후 방송...', '2020-02-08T00:00:00.000+09:00', 'http://www.mimint.co.kr/article/board_view.asp?strBoardID=news&bbstype=S1N13&bidx=2098351&page=1&pageblock=1'),
	(42, '<b>이효리</b>, 반려견 순심이와 함께 자선 팬사인회 개최', '코리아=김현정 기자] 퍼스트룩 마켓(1st Look Market )이 지난 22일 오후 CGV청담씨네시티에서 가수 <b>이효리</b>와 함께 캘린더 발매 기념 팬 사인회를 개최했다. 이번 캘린더에는 <b>이효리</b>와 그녀의 반려견 순심이의...', '2020-02-16T12:55:59.000+09:00', 'http://www.tournews21.com/news/articleView.html?idxno=5053'),
	(43, '쟈딕앤볼테르, 봄의 여신이 된 <b>이효리</b> 화보 공개!', 'ⓒ 마리끌레르 프렌치 모던 럭셔리 브랜드 쟈딕앤볼테르와 함께한 <b>이효리</b>의 화보가 패션 매거진 마리끌레르 3월호에서 공개됐다. 화보 속 <b>이효리</b>는 쟈딕앤볼테르의 다양한 스프링-썸머룩을 착용해 화사한 매력과...', '2020-02-21T00:00:00.000+09:00', 'http://zine.istyle24.com/Fashion/FashionView.aspx?Idx=47700&Menu=12&Page=1&Field=T&Key=&OrderId=');
/*!40000 ALTER TABLE `search_tb` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
