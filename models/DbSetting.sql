/**************************
* 	 WEB PROGARAMMING     *
* MINI PROJECT DATABASE   *
* 	 by Nam Ho Cheol      *
*  c.date: 2018.10.01     *
*   base schema created   *
* email: nhc616@gmail.com *
*    kakaoID: nhc616      *
**************************/
# 2018.10.29 - view updated
# 2018.10.30 - get rank proceddure added
# 2018.11.22 - fake data about 교보문고 updated

# Create Schema for project
DROP DATABASE IF EXISTS `web_mini_project`;
CREATE DATABASE `web_mini_project`;

USE `web_mini_project`;

# create user table for manage users data
DROP TABLE IF EXISTS `web_mini_project`.`user`;
CREATE TABLE `web_mini_project`.`user` (
  `id` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `nickname` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC));


# create store table for save OnlineBookStore data
DROP TABLE IF EXISTS `web_mini_project`.`store`;
CREATE TABLE `web_mini_project`.`store` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
INSERT INTO `web_mini_project`.`store`(name)
values ('아무책대잔치'),('교보문고'),('알라딘'),('영풍문고'),('반디앤루니스'),('YES24');

# create book_info table for manage book data
DROP TABLE IF EXISTS `web_mini_project`.`book_info`;
CREATE TABLE `web_mini_project`.`book_info` (
  `ISBN` CHAR(13) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `author` VARCHAR(80) NOT NULL,
  `translator` VARCHAR(45) NULL,
  `publisher` VARCHAR(45) NOT NULL,
  `pub_date` DATE NOT NULL,
  `Org_Price` INT NULL,
  `img_link` VARCHAR(500) NULL,
  PRIMARY KEY (`ISBN`),
  UNIQUE INDEX `ISBN_UNIQUE` (`ISBN` ASC));

INSERT INTO `web_mini_project`.`book_info`
values 
('9788959895526','트렌드 코리아 2019','전미영 등 8명',NULL,'미래의창','2018-10-26',17000,'http://image.kyobobook.co.kr/images/book/xlarge/526/x9788959895526.jpg'),
('9788965962823','골든아워 1', '이국종',NULL,'흐름출판','2018-10-02',15800,'http://image.kyobobook.co.kr/images/book/xlarge/823/x9788965962823.jpg'),
('9791196067694','12가지 인생의 법칙','조던 B. 피터슨','강주헌','메이븐','2018-10-30',16800,'http://image.kyobobook.co.kr/images/book/xlarge/694/x9791196067694.jpg'),
('9788998274795','돌이킬 수 없는 약속','야쿠마루 가쿠','김성미','북플라자','2017-02-02',15000,'http://image.kyobobook.co.kr/images/book/xlarge/795/x9788998274795.jpg'),
('9791196394509','죽고 싶지만 떡볶이는 먹고 싶어','백세희',NULL,'흔','2018-06-20',13800,'http://image.kyobobook.co.kr/images/book/xlarge/509/x9791196394509.jpg'),
('9791162202913','모든 순간이 너였다','하태완',NULL,'위즈덤하우스','2018-02-16',13800,'http://image.kyobobook.co.kr/images/book/xlarge/913/x9791162202913.jpg'),
('9791158160869','우리가 보낸 가장 긴 밤','이석원',NULL,'달','2018-11-12',13800,'http://image.kyobobook.co.kr/images/book/xlarge/869/x9791158160869.jpg'),
('9791187119845','나는 나로 살기로 했다','김수현',NULL,'마음의숲','2016-11-28',13800,'http://image.kyobobook.co.kr/images/book/xlarge/845/x9791187119845.jpg'),
('9788931587012','수미네 반찬','김수미, 여경래, 최현석, 미카엘 아쉬미노프, tvn 제작부',NULL,'성안당',"2018-10-30",17000,'http://image.kyobobook.co.kr/images/book/xlarge/012/x9788931587012.jpg'),
('9791195522125','언어의 온도','이기주',NULL,'말글터','2016-08-19',13800,'http://image.kyobobook.co.kr/images/book/xlarge/125/x9791195522125.jpg'),
('9788901223032','하마터면 열심히 살 뻔했다','하완',NULL,'웅진지식하우스','2018-04-23',15000,'http://image.kyobobook.co.kr/images/book/xlarge/032/x9788901223032.jpg'),
('9788925563350','곰돌이 푸, 행복한 일은 매일 있어','곰돌이 푸(원작)','정은희','알에이치코리아','2018-03-12',12000,'http://image.kyobobook.co.kr/images/book/xlarge/350/x9788925563350.jpg'),
('9788901227580','비커밍','미셸 오바마','김명남','웅진지식하우스','2018-11-14',22000,'http://image.kyobobook.co.kr/images/book/xlarge/580/x9788901227580.jpg'),
('9788965746669','당신이 옳다','정혜신',NULL,'해냄출판사','2018-10-10',15800,'http://image.kyobobook.co.kr/images/book/xlarge/669/x9788965746669.jpg'),
('9788965706908','초격차','권오현 , 김상근 (정리)',NULL,'쌤앤파커스','2018-09-10',18000,'http://image.kyobobook.co.kr/images/book/xlarge/908/x9788965706908.jpg'),
('9788965962830','골든아워 2','이국종',NULL,'흐름출판','2018-10-02',15800,'http://image.aladin.co.kr/product/16891/58/letslook/S852534471_f.jpg'),
('9788927701057','네이티브 영어표현력 사전','이창수',NULL,'다락원','2018-10-25',25000,'http://image.aladin.co.kr/product/17168/65/letslook/8927701054_f.jpg'),
('9791188810666','작별','한강, 강화길, 권여선, 이승우, 정이현, 정지돈, 김혜진',NULL,'은행나무','2018-10-19',12000,'http://image.aladin.co.kr/product/17071/77/letslook/K702534887_f.jpg'),
('9791163710592','2019 선재국어 한 권으로 정리하는 마무리','이선재',NULL,'(주)에스티유니타스',' 2018-11-20',21000,'http://image.aladin.co.kr/product/17378/45/letslook/K072534691_f.jpg'),
('9788954653558','룬의 아이들 블러디드. 1','전민희',NULL,'엘릭사르','2018-11-23',14500,'http://image.kyobobook.co.kr/images/book/xlarge/558/x9788954653558.jpg'),
('9788937437564','참을 수 없는 존재의 가벼움','밀란 쿤데라','이재룡','민음사','2018-06-20',15000,'http://image.aladin.co.kr/product/15251/16/letslook/8937437562_f.jpg' ),
('9791158510244','5년 후 나에게 - Q&A a day','포터 스타일', '정지현','토네이도','2018-11-1',16800,'http://image.aladin.co.kr/product/17184/76/letslook/K412534797_f.jpg'),
('9788962622508','떨림과 울림','김상욱',NULL,'동아시아','2018-11-07',15000,'http://image.aladin.co.kr/product/17299/89/letslook/S202534393_f.jpg'),
('9788957369364','무례한 사람에게 웃으며 대처하는 법','정문정',NULL,'가나출판사','2018-01-08',13800,'http://image.kyobobook.co.kr/images/book/xlarge/364/x9788957369364.jpg'),
('9788972756194','나미야 잡화점의 기적','히가시노 게이코','양윤옥','현대문학','2012-12-19',14800,'http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg'),
('9791186686348','인생 우화','류시화',NULL,'연금술사','2018-07-30',16000,'http://image.bandinlunis.com/upload/product/4189/4189269_01.jpg'),
('9791195888221','죄와 목소리','시오타 타케시','임화선','비앤엘','2018-03-02',14800,'http://image.bandinlunis.com/upload/product/4144/4144482_01.jpg'),
('9791186665503','말투 하나 바꿨을 뿐인데','나이토 요시히토','김한나','유노북스','2017-03-17',13000,'http://image.bandinlunis.com/upload/product/4048/4048063_01.jpg'),
('9791186274156','약간의 거리를 둔다','소노 아야코','김욱','책읽는고양이','2016-10-20',9900,'http://image.bandinlunis.com/upload/product/4000/4000374_01.jpg'),
('9791160560510','열두 발자국','정재승',NULL,'어크로스','2018-07-02',16800,'http://image.bandinlunis.com/upload/product/4181/4181506_01.jpg'),
('9791187150473','하마터면 회계를 모르고 일할 뻔했다!','김수헌, 이재홍', NULL,'어바웃어북','2018-11-15',16000,'http://image.bandinlunis.com/upload/product/4205/4205448_01.jpg'),
('9791187498384','고요할수록 밝아지는 것들','혜민',NULL,'수오서재','2018-12-05',15000,'http://image.yes24.com/momo/TopCate2065/MidCate001/206407452.jpg'),
('9791130619682','아이의 마음을 읽는 연습 관계 편','인젤리','김락준','다산에듀','2018-11-12',14800,'http://image.yes24.com/momo/TopCate2061/MidCate004/206038093.jpg');

# create book_info table for manage book status
DROP TABLE IF EXISTS `web_mini_project`.`book_status`;
CREATE TABLE `web_mini_project`.`book_status` (
  `ISBN` CHAR(13) NOT NULL,
  `age` INT NOT NULL,
  `fun` INT NOT NULL,
  `practical` INT NOT NULL,
  `dev` INT NOT NULL,
  `expert` INT NOT NULL,
  PRIMARY KEY (`ISBN`),
  CONSTRAINT `FK_ISBN_BOOK_STATUS`
    FOREIGN KEY (`ISBN`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
		ON DELETE CASCADE ON UPDATE CASCADE,
  UNIQUE INDEX `ISBN_UNIQUE` (`ISBN` ASC));
  
INSERT INTO `web_mini_project`.`book_status`
values 
('9788959895526', 5, 3, 3, 4, 3),
('9788965962823', 4, 2, 1, 5, 4),
('9791196067694', 3, 1, 4, 5, 1),
('9788998274795', 2, 5, 1, 2, 1),
('9791196394509', 4, 3, 3, 5, 2),
('9791162202913', 4, 3, 3, 3, 1),
('9791158160869', 3, 3, 2, 2, 1),
('9791187119845', 3, 2, 4, 5, 1),
('9788931587012', 3, 3, 5, 2, 2),
('9791195522125', 4, 2, 3, 5, 1),
('9788901223032', 3, 3, 5, 3, 1),
('9788925563350', 1, 4, 2, 2, 1),
('9788901227580', 3, 3, 4, 5, 1),
('9788965746669', 4, 2, 3, 5, 1),
('9788965706908', 4, 2, 3, 5, 3),
('9788965962830', 4, 2, 3, 2, 3),
('9788927701057', 1, 1, 5, 5, 3),
('9791188810666', 3, 3, 1, 3, 1),
('9791163710592', 1, 1, 5, 5, 3),
('9788954653558', 1, 5, 1, 1, 1),
('9788937437564', 3, 3, 4, 3, 1),
('9791158510244', 3, 3, 5, 3, 1),
('9788962622508', 3, 3, 4, 3, 1),
('9788957369364', 3, 3, 4, 3, 1),
('9788972756194', 3, 5, 4, 3, 1),
('9791186686348', 3, 3, 4, 3, 1),
('9791195888221', 3, 3, 4, 3, 1),
('9791186665503', 3, 3, 4, 3, 1),
('9791186274156', 3, 3, 4, 3, 1),
('9791160560510', 3, 3, 4, 3, 1),
('9791187150473', 3, 3, 4, 3, 1),
('9791187498384', 3, 3, 4, 3, 1),
('9791130619682', 3, 3, 4, 3, 1);
 
  
# create books table for save BookData for each stores
DROP TABLE IF EXISTS `web_mini_project`.`books`;
CREATE TABLE `web_mini_project`.`books` (
  `ISBN` CHAR(13) NOT NULL,
  `store_id` INT NOT NULL,
  `price` INT NOT NULL,
  `link` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`ISBN`, `store_id`),
  INDEX `FK_STOR_ID_BOOKS_idx` (`store_id` ASC),
  CONSTRAINT `FK_ISBN_BOOKS`
    FOREIGN KEY (`ISBN`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
		ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_STOR_ID_BOOKS`
    FOREIGN KEY (`store_id`) REFERENCES `web_mini_project`.`store` (`id`)
		ON DELETE CASCADE ON UPDATE CASCADE);
INSERT INTO `web_mini_project`.`books`
values 
('9788959895526',2,15300,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788959895526'),
('9788965962823',2,14220,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788965962823'),
('9791196067694',2,15120,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791196067694'),
('9788998274795',2,13500,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788998274795'),
('9791196394509',2,12420,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791196394509'),
('9791162202913',2,12420,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791162202913'),
('9791158160869',2,12420,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791158160869'),
('9791187119845',2,12420,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791187119845'),
('9788931587012',2,15300,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788931587012'),
('9791195522125',2,12420,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791195522125'),
('9788901223032',2,13500,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788901223032'),
('9788925563350',2,10800,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788925563350'),
('9788901227580',2,19800,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788901227580'),
('9788965746669',2,14220,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788965746669'),
('9788965706908',2,16200,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788965706908'),
('9788965962830',2,14200,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788965962830'),
('9788927701057',2,12500,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9788927701057'),
('9791188810666',2,10800,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791188810666'),
('9791163710592',2,18900,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9791163710592'),
('9788954653558',2,13050,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9788954653558'),
('9788937437564',2,13500,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9788937437564'),
('9791158510244',2,15120,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9791158510244'),
('9788962622508',2,13500,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9788962622508'),
('9788957369364',2,12420,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9788957369364'),
('9788972756194',2,13320,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9788972756194'),
('9791186686348',2,14400,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791186686348'),
('9791195888221',2,13320,'http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9791195888221'),
('9791186665503',2,11700,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791186665503'),
('9791186274156',2,8910,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791186274156'),
('9791160560510',2,15120,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791160560510'),
('9791187150473',2,15120,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791187150473'),
('9791187498384',2,13500,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791187498384'),
('9791130619682',2,13320,'http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791130619682'),
('9788965962823',3,14220,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=168915737'),
('9788965962830',3,14220,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=168915857'),	
('9788959895526',3,15300,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=170467155'),	
('9788927701057',3,22500,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=171686552'),
('9791158160869',3,12420,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=172995535'),
('9791196067694',3,15120,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=172152642'),
('9788965746669',3,14220,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=169387318'),
('9788901227580',3,19800,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=173048689'),
('9791188810666',3,10800,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=170717710'),
('9791163710592',3,18900,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=173784566'),
('9788931587012',3,15300,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=171268338'),
('9788954653558',3,13050,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=173027732'),
('9788937437564',3,13500,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=152511699'),
('9791158510244',3,15120,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=171847604'),
('9788962622508',3,13500,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=172998958'),
('9788998274795',3,13500,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=101745680'),
('9791196394509',3,12420,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=151362923'),
('9791162202913',3,12420,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=171781820'),
('9791187119845',3,12420,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=167518697'),
('9791195522125',3,12420,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=88957773'),
('9788901223032',3,13500,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=173868379'),
('9788925563350',3,10800,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=135592589'),
('9788965706908',3,16200,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=166283261'),
('9788957369364',3,12420,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=171905788'),
('9788972756194',3,13320,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=21753305'),
('9791186686348',3,14400,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=156465462'),
('9791195888221',3,13320,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=135080640'),
('9791186665503',3,11700,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=164516475'),
('9791186274156',3,8190,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=94146727'),
('9791160560510',3,15120,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=150722838'),
('9791187150473',3,15120,'https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=171607479'),
('9791187498384',3,13500,'http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=174302739'),
('9791130619682',3,13320,'http://www.aladin.co.kr/shop/wproduct.aspx?ItemId=173726299'),
('9788959895526',4,15300,'http://www.ypbooks.co.kr/book.yp?bookcd=100899523'),
('9788965962823',4,14220,'http://www.ypbooks.co.kr/book.yp?bookcd=100896155'),
('9788998274795',4,13500,'http://www.ypbooks.co.kr/book.yp?bookcd=100750901'),
('9791196394509',4,12420,'http://www.ypbooks.co.kr/book.yp?bookcd=100875212'),
('9791162202913',4,12420,'http://www.ypbooks.co.kr/book.yp?bookcd=100841415'),
('9791187119845',4,12420,'http://www.ypbooks.co.kr/book.yp?bookcd=100735780'),
('9791196067694',4,15120,'http://www.ypbooks.co.kr/book.yp?bookcd=100903961'),
('9788965962830',4,14220,'http://www.ypbooks.co.kr/book.yp?bookcd=100896156'),
('9788931587012',4,15300,'http://www.ypbooks.co.kr/book.yp?bookcd=100901712'),
('9788965706908',4,16200,'http://www.ypbooks.co.kr/book.yp?bookcd=100891476'),
('9788901223032',4,13500,'http://www.ypbooks.co.kr/book.yp?bookcd=100860264'),
('9791195522125',4,12420,'http://www.ypbooks.co.kr/book.yp?bookcd=100710623'),
('9788925563350',4,10800,'http://www.ypbooks.co.kr/book.yp?bookcd=100846729'),
('9788957369364',4,12420,'http://www.ypbooks.co.kr/book.yp?bookcd=100830410'),
('9788972756194',4,13320,'http://www.ypbooks.co.kr/book.yp?bookcd=100380588'),
('9788901227580',4,19800,'http://www.ypbooks.co.kr/book.yp?bookcd=100905327'),
('9788927701057',4,22500,'http://www.ypbooks.co.kr/book.yp?bookcd=100902479'),
('9788937437564',4,13500,'http://www.ypbooks.co.kr/book.yp?bookcd=100874969'),
('9788954653558',4,13050,'http://www.ypbooks.co.kr/book.yp?bookcd=100905277'),
('9788962622508',4,13500,'http://www.ypbooks.co.kr/book.yp?bookcd=100904720'),
('9788965746669',4,14220,'http://www.ypbooks.co.kr/book.yp?bookcd=100894935'),
('9791158160869',4,12420,'http://www.ypbooks.co.kr/book.yp?bookcd=100905044'),
('9791158510244',4,15120,'http://www.ypbooks.co.kr/book.yp?bookcd=100645554'),
('9791163710592',4,19320,'http://www.ypbooks.co.kr/book.yp?bookcd=100907818'),
('9791188810666',4,10800,'http://www.ypbooks.co.kr/book.yp?bookcd=100899689'),
('9791186686348',4,14400,'http://www.ypbooks.co.kr/book.yp?bookcd=100879809'),
('9791195888221',4,13320,'http://www.ypbooks.co.kr/book.yp?bookcd=100844256'),
('9791186665503',4,11700,'http://www.ypbooks.co.kr/book.yp?bookcd=100761397'),
('9791186274156',4,8910,'http://www.ypbooks.co.kr/book.yp?bookcd=100724760'),
('9791160560510',4,15120,'http://www.ypbooks.co.kr/book.yp?bookcd=100872043'),
('9791187150473',4,15120,'http://www.ypbooks.co.kr/book.yp?bookcd=100902110'),
('9791187498384',4,13500,'http://www.ypbooks.co.kr/book.yp?bookcd=100909795'),
('9791130619682',4,13320,'http://www.ypbooks.co.kr/book.yp?bookcd=100907071'),
('9788959895526',5,15300,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4204320'),
('9788965962823',5,14220,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4201044'),
('9788998274795',5,13500,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4034224'),
('9791196394509',5,12420,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4181047'),
('9791162202913',5,12420,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4148346'),
('9791187119845',5,12420,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4015026'),
('9791196067694',5,15120,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4206816'),
('9788965962830',5,14220,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4201046'),
('9788931587012',5,15300,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4205096'),
('9788965706908',5,16200,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4196049'),
('9788901223032',5,13500,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4169608'),
('9791195522125',5,12420,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=3983105'),
('9788925563350',5,10800,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4157737'),
('9788957369364',5,12420,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4134086'),
('9788972756194',5,13320,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=3558781'),
('9788901227580',5,19800,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4207947'),
('9788927701057',5,22500,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4205702'),
('9788937437564',5,13500,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4182650'),
('9788954653558',5,13050,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4207850'),
('9788962622508',5,13500,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4209484'),
('9788965746669',5,14220,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4201646'),
('9791158160869',5,12420,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4209412'),
('9791158510244',5,15120,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4206551'),
('9791163710592',5,19320,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4210000'),
('9791188810666',5,10800,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4203094'),
('9791186686348',5,14400,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4189269'),
('9791195888221',5,13320,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4144482'),
('9791186665503',5,11700,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4048063'),
('9791186274156',5,8910,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4000374'),
('9791160560510',5,15120,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4181506'),
('9791187150473',5,15120,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4205448'),
('9791130619682',5,13320,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4209493'),
('9791187498384',5,13500,'http://www.bandinlunis.com/front/product/detailProduct.do?prodId=4213469'),
('9788959895526',6,15300,'http://www.yes24.com/24/goods/65100984'),
('9788965962823',6,14220,'http://www.yes24.com/24/goods/64610518'),
('9788998274795',6,13500,'http://www.yes24.com/24/goods/35552641'),
('9791196394509',6,12420,'http://www.yes24.com/24/goods/61779464'),
('9791162202913',6,12420,'http://www.yes24.com/24/goods/58603565'),
('9791187119845',6,12420,'http://www.yes24.com/24/goods/33529377'),
('9791196067694',6,15120,'http://www.yes24.com/24/goods/66360714'),
('9788965962830',6,14220,'http://www.yes24.com/24/goods/64610523'),
('9788931587012',6,15300,'http://www.yes24.com/24/goods/65564967'),
('9788965706908',6,16200,'http://www.yes24.com/24/goods/64340664'),
('9788901223032',6,13500,'http://www.yes24.com/24/goods/60208514'),
('9791195522125',6,12420,'http://www.yes24.com/24/goods/30387696'),
('9788925563350',6,10800,'http://www.yes24.com/24/goods/59070026'),
('9788957369364',6,12420,'http://www.yes24.com/24/goods/57817824'),
('9788972756194',6,13320,'http://www.yes24.com/24/goods/8157957'),
('9788901227580',6,19800,'http://www.yes24.com/24/goods/66581518'),
('9788927701057',6,22500,'http://www.yes24.com/24/goods/65930250'),
('9788937437564',6,13500,'http://www.yes24.com/24/goods/61933303'),
('9788954653558',6,13050,'http://www.yes24.com/24/goods/66544423'),
('9788962622508',6,13500,'http://www.yes24.com/24/goods/66322614'),
('9788965746669',6,14220,'http://www.yes24.com/24/goods/64694842'),
('9791158160869',6,12420,'http://www.yes24.com/24/goods/66814849'),
('9791158510244',6,15120,'http://www.yes24.com/24/goods/22793441'),
('9791163710592',6,19320,'http://www.yes24.com/24/goods/66885187'),
('9791188810666',6,10800,'http://www.yes24.com/24/goods/65298919'),
('9791186686348',6,14400,'http://www.yes24.com/24/goods/62229749'),
('9791195888221',6,13320,'http://www.yes24.com/24/goods/58816202'),
('9791186665503',6,11700,'http://www.yes24.com/24/goods/37126882'),
('9791186274156',6,8910,'http://www.yes24.com/24/goods/32695057'),
('9791160560510',6,15120,'http://www.yes24.com/24/goods/61557678'),
('9791187150473',6,15120,'http://www.yes24.com/24/goods/65787664'),
('9791187498384',6,13500,'http://www.yes24.com/24/goods/66997133'),
('9791130619682',6,13320,'http://www.yes24.com/24/goods/66794765');

select * from `web_mini_project`.`books`
order by `ISBN`;

# create rank table for save BestSeller Data
DROP TABLE IF EXISTS `web_mini_project`.`rank`;
CREATE TABLE `web_mini_project`.`rank` (
  `week` DATE NOT NULL,
  `store_id` INT NOT NULL,
  `rank01` CHAR(13),`rank02` CHAR(13),`rank03` CHAR(13),
  `rank04` CHAR(13),`rank05` CHAR(13),`rank06` CHAR(13),
  `rank07` CHAR(13),`rank08` CHAR(13),`rank09` CHAR(13),
  `rank10` CHAR(13),`rank11` CHAR(13),`rank12` CHAR(13),
  `rank13` CHAR(13),`rank14` CHAR(13),`rank15` CHAR(13),
  PRIMARY KEY (`week`, `store_id`),
  CONSTRAINT `FK_STOR_ID_RANK`
	FOREIGN KEY (`store_id`) REFERENCES `web_mini_project`.`store` (`id`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK01`
	FOREIGN KEY (`rank01`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK02`
	FOREIGN KEY (`rank02`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK03`
	FOREIGN KEY (`rank03`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK04`
	FOREIGN KEY (`rank04`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK05`
	FOREIGN KEY (`rank05`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK06`
	FOREIGN KEY (`rank06`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK07`
	FOREIGN KEY (`rank07`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK08`
	FOREIGN KEY (`rank08`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK09`
	FOREIGN KEY (`rank09`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK10`
	FOREIGN KEY (`rank10`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK11`
	FOREIGN KEY (`rank11`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK12`
	FOREIGN KEY (`rank12`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK13`
	FOREIGN KEY (`rank13`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK14`
	FOREIGN KEY (`rank14`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_RANK15`
	FOREIGN KEY (`rank15`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO `web_mini_project`.`rank`
values 
('2018-11-07',1,'9788959895526','9788965962823','9788998274795','9788972756194','9791162202913',
				'9791187119845','9791195522125','9788965962830','9788931587012','9788965706908',
                '9791196394509','9791196067694','9788925563350','9788957369364','9788901223032'),
('2018-11-07',2,'9788959895526','9788965962823','9791196067694','9788998274795','9791196394509',
			    '9791162202913','9791158160869','9791187119845','9788931587012','9791195522125',
                '9788901223032','9788925563350','9788901227580','9788965746669','9788965706908'),
('2018-11-07',3,'9788965962823','9788965962830','9788959895526','9788927701057','9791158160869',
				'9791196067694','9788965746669','9788901227580','9791188810666','9791163710592',
                '9788931587012','9788954653558','9788937437564','9791158510244','9788962622508'),
('2018-11-07',4,'9788959895526','9788965962823','9788998274795','9791196394509','9791162202913',
				'9791187119845','9791196067694','9788965962830','9788931587012','9788965706908',
                '9788901223032','9791195522125','9788925563350','9788957369364','9788972756194'),
('2018-11-07',5,'9788965962823','9791196067694','9788959895526','9788965962830','9788965706908',
				'9791186686348','9788998274795','9788901223032','9791195888221','9791186665503',
                '9791195522125','9791186274156','9791160560510','9788972756194','9791187150473'),
('2018-11-07',6,'9788965962823','9791196067694','9788965962830','9788959895526','9788931587012',
				'9791186274156','9788901227580','9788965746669','9791187119845','9791187498384',
                '9791130619682','9788901223032','9791196394509','9788998274795','9791195522125'),
('2018-11-14',1,'9788959895526','9788965962823','9788998274795','9788972756194','9791162202913',
				'9791187119845','9791195522125','9788965962830','9788931587012','9788965706908',
                '9791196394509','9791196067694','9788925563350','9788957369364','9788901223032'),
('2018-11-14',2,'9788959895526','9788965962823','9791196067694','9788998274795','9791196394509',
			    '9791162202913','9791158160869','9791187119845','9788931587012','9791195522125',
                '9788901223032','9788925563350','9788901227580','9788965746669','9788965706908'),
('2018-11-14',3,'9788965962823','9788965962830','9788959895526','9788927701057','9791158160869',
				'9791196067694','9788965746669','9788901227580','9791188810666','9791163710592',
                '9788931587012','9788954653558','9788937437564','9791158510244','9788962622508'),
('2018-11-14',4,'9788959895526','9788965962823','9788998274795','9791196394509','9791162202913',
				'9791187119845','9791196067694','9788965962830','9788931587012','9788965706908',
                '9788901223032','9791195522125','9788925563350','9788957369364','9788972756194'),
('2018-11-14',5,'9788965962823','9791196067694','9788959895526','9788965962830','9788965706908',
				'9791186686348','9788998274795','9788901223032','9791195888221','9791186665503',
                '9791195522125','9791186274156','9791160560510','9788972756194','9791187150473'),
('2018-11-14',6,'9788965962823','9791196067694','9788965962830','9788959895526','9788931587012',
				'9791186274156','9788901227580','9788965746669','9791187119845','9791187498384',
                '9791130619682','9788901223032','9791196394509','9788998274795','9791195522125'),
('2018-11-21',1,'9788959895526','9788965962823','9788998274795','9788972756194','9791162202913',
				'9791187119845','9791195522125','9788965962830','9788931587012','9788965706908',
                '9791196394509','9791196067694','9788925563350','9788957369364','9788901223032'),
('2018-11-21',2,'9788959895526','9788965962823','9791196067694','9788998274795','9791196394509',
			    '9791162202913','9791158160869','9791187119845','9788931587012','9791195522125',
                '9788901223032','9788925563350','9788901227580','9788965746669','9788965706908'),
('2018-11-21',3,'9788965962823','9788965962830','9788959895526','9788927701057','9791158160869',
				'9791196067694','9788965746669','9788901227580','9791188810666','9791163710592',
                '9788931587012','9788954653558','9788937437564','9791158510244','9788962622508'),
('2018-11-21',4,'9788959895526','9788965962823','9788998274795','9791196394509','9791162202913',
				'9791187119845','9791196067694','9788965962830','9788931587012','9788965706908',
                '9788901223032','9791195522125','9788925563350','9788957369364','9788972756194'),
('2018-11-21',5,'9788965962823','9791196067694','9788959895526','9788965962830','9788965706908',
				'9791186686348','9788998274795','9788901223032','9791195888221','9791186665503',
                '9791195522125','9791186274156','9791160560510','9788972756194','9791187150473'),
('2018-11-21',6,'9788965962823','9791196067694','9788965962830','9788959895526','9788931587012',
				'9791186274156','9788901227580','9788965746669','9791187119845','9791187498384',
                '9791130619682','9788901223032','9791196394509','9788998274795','9791195522125'),
('2018-11-28',1,'9788965962823','9788959895526','9788972756194','9788998274795','9791162202913',
				'9791187119845','9788965962830','9791196067694','9788931587012','9788965706908',
                '9791196394509','9788925563350','9791195522125','9788957369364','9788901223032'),
('2018-11-28',2,'9788965962823','9788959895526','9788998274795','9791196067694','9791196394509',
			    '9791162202913','9791187119845','9791158160869','9788931587012','9791195522125',
                '9788925563350','9788965746669','9788901223032','9788901227580','9788965706908'),
('2018-11-28',3,'9788927701057','9788965962823','9788965962830','9788959895526','9791158160869',
				'9788901227580','9791196067694','9788965746669','9791188810666','9791163710592',
                '9791158510244','9788931587012','9788954653558','9788937437564','9788962622508'),
('2018-11-28',4,'9791196394509','9788959895526','9788965962823','9788998274795','9791162202913',
				'9791187119845','9791196067694','9788965962830','9788931587012','9788965706908',
                '9788972756194','9788901223032','9788925563350','9791195522125','9788957369364'),
('2018-11-28',5,'9788959895526','9788965962823','9791196067694','9788965962830','9788965706908',
				'9791186686348','9788901223032','9788998274795','9791195888221','9791186665503',
                '9791195522125','9791186274156','9791160560510','9788972756194','9791187150473'),
('2018-11-28',6,'9788965962830','9788965962823','9791196067694','9788959895526','9788931587012',
				'9791186274156','9791187498384','9788901227580','9788965746669','9791187119845',
                '9788901223032','9791195522125','9791130619682','9791196394509','9788998274795'),                
('2018-12-05',1,'9788965962823','9788959895526','9788972756194','9788998274795','9791162202913',
				'9791187119845','9791195522125','9788965962830','9788931587012','9788965706908',
                '9791196394509','9791196067694','9788925563350','9788957369364','9788901223032'),
('2018-12-05',2,'9788959895526','9788965962823','9791196067694','9788998274795','9791196394509',
			    '9791162202913','9791158160869','9791187119845','9788931587012','9791195522125',
                '9788901223032','9788925563350','9788901227580','9788965746669','9788965706908'),
('2018-12-05',3,'9788965962823','9788965962830','9788959895526','9788927701057','9791158160869',
				'9791196067694','9788965746669','9788901227580','9791188810666','9791163710592',
                '9788931587012','9788954653558','9788937437564','9791158510244','9788962622508'),
('2018-12-05',4,'9788959895526','9788965962823','9788998274795','9791196394509','9791162202913',
				'9791187119845','9791196067694','9788965962830','9788931587012','9788965706908',
                '9788901223032','9791195522125','9788925563350','9788957369364','9788972756194'),
('2018-12-05',5,'9788965962823','9791196067694','9788959895526','9788965962830','9788965706908',
				'9791186686348','9788998274795','9788901223032','9791195888221','9791186665503',
                '9791195522125','9791186274156','9791160560510','9788972756194','9791187150473'),
('2018-12-05',6,'9788965962823','9791196067694','9788965962830','9788959895526','9788931587012',
				'9791186274156','9788901227580','9788965746669','9791187119845','9791187498384',
                '9791130619682','9788901223032','9791196394509','9788998274795','9791195522125');             
                
# create our_comment table for manage comment from our webSite
DROP TABLE IF EXISTS `web_mini_project`.`our_comment`;	
CREATE TABLE `web_mini_project`.`our_comment` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(20) NOT NULL,
  `ISBN` CHAR(13) NOT NULL,
  `rate` FLOAT NOT NULL,
  `comment` VARCHAR(600) NOT NULL,
  `time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`),
  INDEX `FK_ID_idx` (`id` ASC),
  INDEX `FK_ISBN_CMT_OUR_idx` (`ISBN` ASC),
  CONSTRAINT `FK_ID_CMT_OUR`
    FOREIGN KEY (`id`) REFERENCES `web_mini_project`.`user` (`id`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_CMT_OUR`
    FOREIGN KEY (`ISBN`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE);
    
    
# create our_comment table for manage comment from other webSite
DROP TABLE IF EXISTS `web_mini_project`.`other_comment`;
CREATE TABLE `web_mini_project`.`other_comment` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(20) NOT NULL,
  `pubid` INT NOT NULL,
  `ISBN` CHAR(13) NOT NULL,
  `rate` FLOAT NOT NULL,
  `comment` VARCHAR(600) NOT NULL,
  `time` DATETIME NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `FK_STOR_ID_CMT_OTHER_idx` (`pubid` ASC),
  INDEX `FK_ISBN_CMT_OTHER_idx` (`ISBN` ASC),
  CONSTRAINT `FK_STOR_ID_CMT_OTHER`
    FOREIGN KEY (`pubid`) REFERENCES `web_mini_project`.`store` (`id`)
    ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ISBN_CMT_OTHER`
    FOREIGN KEY (`ISBN`) REFERENCES `web_mini_project`.`book_info` (`ISBN`)
    ON DELETE CASCADE ON UPDATE CASCADE);
INSERT INTO `web_mini_project`.`other_comment`(`id`,`pubid`,`ISBN`,`rate`,`comment`,`time`)
values 
('ai**329',2,'9788959895526',5.0,'몰랐던 것도 알게되고 좋은듯', '2018-11-22 15:34:40'),
('sm**ng0212',2,'9788959895526',5.0,'매년 구입하는 책인데 올해도 역시 알차게 구성되어 있네요', '2018-11-22 09:59:04'),
('kh**180',2,'9788959895526',5.0,'매년 나오면 읽는책 내년의 트렌드의 흐름을 알 수 있는 그런책이죠', '2018-11-22 06:10:32'),
('kw**gho71',2,'9788959895526',3.0,'습관적으로 매년 구매.. 독자의 조급함을 이용한 상술이 보이기 시작해 마음이 아픕니다', '2018-11-22 00:33:09'),
('mi**15',2,'9788965962823',5.0,'이국종 의사선생님을 비롯해 아주대 외상센터에서 근무하는 모든 분들이 건강하게 근무 하셨으면 좋겠고, 소방대원분들도 많이 충원되고 닥터헬기, 의료용품이 많이 보급되면 좋겠습니다. 국회의원 놈들 월급 깍아서 의료비 좀 줘라!!', '2018-11-22 20:03:47'),
('es**15',2,'9788965962823',5.0,'읽고 싶었던 책이에요.', '2018-11-22 10:51:48'),
('ji**ian',2,'9788965962823',3.0,'냉소적이지만 현실적인 개척가의 의지.', '2018-11-22 10:20:48'),
('al**xiah',2,'9788965962823',5.0,'읽는 내내 울다가 책을 놓을 때쯤 탈진했습니다. 누가 이렇게 치열하게 살 수 있을지요. 말씀 그대로 “죽을 때까지 길바닥에서 일하다 파편처럼 흩어질” 것만 같습니다. 항상 존경하고 기억합니다. 교수님, 하고 싶은 거 다 하세요!!', '2018-11-22 02:06:20'),
('19**wook',2,'9791196067694',3.0,'각장의 결론은 꽤 중요한 의미를 생각할수 있게 하지만, 상당부분의 전개과정에서 종교에 기반한 논리전개가 이어집니다. 결국 종교의 기반이 인간이 만들어낸 이야기라고 생각하는 무신론자 입장에서는 좀 아쉬운 부분이네요.', '2018-11-22 17:17:32'),
('cy**e',2,'9791196067694',5.0,'기대중~!', '2018-11-22 17:12:21'),
('ba**ain11',2,'9791196067694',4.0,'한동안 이런류의 책을 잘 읽고 싶지가 않았는데 요즘 하도 이슈가 되는 책이라서 궁금한 마음에 구매했습니다. 잘 아는 내용도 책을 통해 한번 더 다시 읽게 되면 뭔가 어떤 변화의 기초가 되지 않을까 하는 마음에 정독하게 됩니다.', '2018-11-22 01:49:30'),
('k4**8',2,'9788998274795',2.0,'베스트셀러 정도의 작품은 아닌듯 하다.', '2018-11-22 18:36:24'),
('rl**99',2,'9788998274795',4.0,'양장본이 아니어서 조금 아쉽네요', '2018-11-22 13:43:58'),
('go**aos',2,'9788998274795',3.0,'잘 읽혀요..', '2018-11-22 01:00:27'),
('eg**23',2,'9791196394509',1.0,'제목때문에 끌리는건지 좋은책은 아닌거같다', '2018-11-22 05:16:26'),
('li**1702',2,'9791196394509',4.0,'오늘하루도 토닥여주는 한권의 책!', '2018-11-21 22:12:25'),
('ho**ljj',2,'9791196394509',5.0,'나와 일치하는 문장을 만날때마다 깜짝깜짝 놀랐던....', '2018-11-21 10:55:51'),
('to**a1699',2,'9791162202913',5.0,'넘나좋음', '2018-11-21 22:14:59'),
('al**ua6538',2,'9791162202913',5.0,'너무 마음을 울리는 에세이에요', '2018-11-21 21:54:05'),
('lo**mi',2,'9791162202913',5.0,'너무 기대되는 책입니다. 마음움직임이 필요해요', '2018-11-21 18:55:19'),
('bb**gu13',2,'9791158160869',5.0,'이번 작품도 역시 좋네요^^', '2018-11-22 20:58:18'),
('jk**g99',2,'9791158160869',5.0,'스치고 지나간 많은 것들에 대해 나 또한 생각과 고민을 해본다', '2018-11-22 11:13:46'),
('ji**0876',2,'9791158160869',5.0,'선물 받아서 읽어봤는데 너무 좋네요. 작가님 특유의 담담한 문체도 너무 좋고 읽으면서 많은 위안을 받았어요. 비중을 많이 차지하는 어머니 이야기에서도 반성도 하게 됐구요. 보통의 존재를 아직 안 읽어봤는데 구매해서 읽어봐야겠습니다 꼭', '2018-11-22 10:29:58'),
('fr**kosang',2,'9791187119845',3.0,'선물 주려고 샀어요. 위로가 되기를...', '2018-11-18 23:37:18'),
('ys**ck76',2,'9791187119845',5.0,'우리들의 삶 모든것을 하나하나 되 짚어주는 좋은책입니다 우리가 바쁘게 살아가면서 잊고 지냈던것들을 다시한번 생각하게되네요', '2018-11-18 21:10:43'),
('yp**nce',2,'9788931587012',5.0,'집밥이 최고예요~', '2018-11-22 13:47:57'),
('th**ips',2,'9791195522125',5.0,'좋아요', '2018-11-22 21:14:20'),
('sa**m8322',2,'9791195522125',5.0,'마음을 울리는 인생책입니다.', '2018-11-21 19:27:36'),
('ch**gsanri',2,'9788901223032',5.0,'"한번쯤은 이렇게 살아보고 싶었다. 애쓰지 않고 흘러가는대로,어디로 흘러가는지 모르지만,즐거운 마음으로 둥둥! 여행은 시작됐다."', '2018-11-21 22:04:51'),
('sk**sk740',2,'9788901223032',5.0,'인생은 속도가 아니라 방향이다.', '2018-11-21 10:06:26'),
('zo**com',2,'9788901223032',4.0,'하루의 3분의 2를 자기 마음대로 쓰지 못하는 사람은 노예다 ㅡ 니체', '2018-11-19 16:23:12'),
('jh**e73',2,'9788925563350',5.0,'곰돌이 푸 를 보고있으면 매일 행복한 일이 생길것 같아요.', '2018-11-22 04:11:12'),
('da**iggul',2,'9788925563350',5.0,'위로가 되었어요 단순하고 짧은 문구들이지만 좋았습니다', '2018-11-20 10:11:00'),
('mi**ee3082',2,'9788925563350',5.0,'요즈음 쉽게 우울해지고 부정적으로 생각해서 삶이 무료해지고 있었는데 오랜만에 책을 읽었더니 힐링 되는 것 같아 굉장히 좋았습니다.', '2018-11-19 21:55:42'),
('co**5004',2,'9788901227580',5.0,'기대되는 책이에요. 한국에도 임기후에도 존경받는 대통령과 퍼스트레이디가 나오는 시대가 나오길 간절히 바라며...', '2018-11-21 20:32:39'),
('ba**0038',2,'9788901227580',5.0,'너무나 기다렸던 책입니다. 위대하다는 생각이듭니다.', '2018-11-22 16:07:02'),
('g2**es',2,'9788901227580',3.0,'잘 받았어요 ~', '2018-11-22 22:51:25'),
('wo**509',2,'9788965746669',5.0,'맘에 위로가 되네요', '2018-11-22 10:34:19'),
('jj**77',2,'9788965746669',4.0,'긍정적이네요', '2018-11-21 18:32:25'),
('kw**gho71',2,'9788965746669',5.0,'따듯한 마음의 공감이 느껴집니다..', '2018-11-22 00:33:58'),
('sy**n916',2,'9788965706908',4.0,'회사에서 억지로 강요하여 보았지만 내용 자체는 유익하네요', '2018-11-20 22:31:16'),
('ij**yo',2,'9788965706908',5.0,'내공이 느껴지는, 단순해보이지만 엄청난 고민과 실행에 기반한 책', '2018-11-20 04:49:11'),
('re**255',2,'9788965706908',5.0,'한번은 읽어볼만합니다 꼭 리더가 되지않아도 직장생활을 하면 결정으뢔야할때 도움이 되는 말이 많네요', '2018-11-19 15:10:51'),
('메리포핀스',3,'9788965962823',5.0,'서문만 읽었는데 힘들다. 못 읽겠다. 한 가지는 확인했다. 내가 책을 사는 이유는 한 두가지가 아니라는 사실... 읽으려고 살 뿐만 아니라 그냥 갖고만 있으려고도 사고, 남 주려고, 고마워서, 미안해서, 응원하려고, 뭐라도 정말 뭐라도 해야겠다는 생각에, 빚 진 기분으로 등등.', '2018-10-04 00:00:00'),
('pedrailmin',3,'9788965962823',5.0,'정치력이 없는 의사가 대학병원에서 소신대로 진료하는 것이 이렇게나 힘듭니다.', '2018-10-12 00:00:00'),
('보물창고',3,'9788965962823',5.0,'이국종 교수님은 정말 이순신장군같다. 찬바닷바람 맞으며 외로운 해전을 지휘하는 장군님처럼, 척박한 의료 현장에서 팀원들을 이끌고 싸운다. 누구도 칭찬하지않는 길을 욕먹으며 개척하고 피곤에 절어 수술을 한다. 그가 구한 생명들만이 그의 빛이다. 2권도 같이 살걸 후회하며 좀전에 주문했다.', '2018-10-05 00:00:00'),
('쪼님',3,'9788965962830',5.0,'속이 터지고 분통이 터진다. 일부는 이국종 너무 비관적으로 말하지 않느냐 하는데 비참한게 현실이다', '2018-11-09 00:00:00'),
('djfwkd016',3,'9788965962830',5.0,'그저 감사하다라는 말밖에..할수없었다', '2018-10-17 00:00:00'),
('khangod',3,'9788965962830',5.0,'정경원에게, 시스템이 왜 중요한지 그리고 시스템을 위해 후배를 무척 아끼는 우이공산을 가꾸는 헛꿈을 꾸는 남자를 나는 눈물로 축복했다. 02년 이후 한발짝도 나아가지 못한 현실이 안타깝다.', '2018-11-02 00:00:00'),
('보리',3,'9788959895526',5.0,'매년 나올 때마다 구매하지만 비싸요ㅠ', '2018-10-26 00:00:00'),
('icdus',3,'9788959895526',4.0,'책 내용좋고 편집 괜찮고 종이질도 괜찮습니다. 다만 책 가격이 조금 비싸게 느껴집니다^^;', '2018-10-26 00:00:00'),
('만종이',3,'9788959895526',5.0,'작년에 워라밸, 소확행, 케렌시아 같은 트렌드 키워드처럼 이번엔 어떤 트렌드가 히트를 칠 지 궁금하네요!! 마케터로서 매년 챙겨 읽는 책이예요', '2018-11-01 00:00:00'),
('뮤탈리스크',3,'9788927701057',5.0,'생각도 못한 재출간이네요. 정말 기쁘기 그지없습니다...!', '2018-10-26 00:00:00'),
('seasun',3,'9791158160869',5.0,'너무나 기다렸던 그의 소식^ ^ 따뜻한 겨울나기 준비', '2018-11-01 00:00:00'),
('엘모',3,'9791158160869',2.0,'받자말자 몇장 읽었는데 이전의 글만큼 울림이 없어요. 몇장몇장은 이전 이석원과는 다른 인스타갬성의 글이 있어 실망스러워요.', '2018-11-14 00:00:00'),
('artkm99',3,'9791158160869',5.0,'기다림 끝에 드디어 2주 뒤면 만나게 될 밤~! 11월 첫날 부터 설레이네요~~^^', '2018-11-01 00:00:00'),
('maitri',3,'9791196067694',5.0,'피터슨님께서 강림하셨습니다. 좌파 페미 PC 의 허상을 박살내고 니체의 진정한 메시지를 알려주며 삶의 의미와 어떻게 살아야 하는가를 설파하는 이 시대의 구루가 오셨습니다', '2018-11-03 00:00:00'),
('cyma9',3,'9791196067694',5.0,'드디어 이책이 한국에서 출간하네요 기대됩니다ㅠㅠ', '2018-10-29 00:00:00'),
('노군',3,'9791196067694',5.0,'원래 자기계발서 따위는 전혀 읽지 않는데 하도 유명한 책이라 읽어보았다. 최고다!', '2018-11-09 00:00:00'),
('제니스턴',3,'9788965746669',5.0,'울면서 읽었다. 어쩌면 이렇게도 다정하고 동시에 정확한가. 나는 보통 책을 읽고, 좋은 책이면 주변 사람들 중 가장 이 책을 읽으면 도움이 될 것 같은 이에게 나눠주곤 하는데 이 책은 도저히 줄 수가 없겠다. 대신 몇 권을 새로 사서 선물해야겠다는 생각이 든다.', '2018-10-20 00:00:00'),
('Richelieu',3,'9788965746669',5.0,'요즘 들어서 상당히 힘들어서 그에 대한 위로나 해답을 내줄 수 있는 책을 찾다가 골랐는데 잘 고른것 같다. 읽는 중간중간 펑펑 울었다. 현재가 정말 힘든사람에게도 좋지만, 주위에 힘든사람이 있어도 읽어봐야할 책이다.', '2018-11-20 00:00:00'),
('책과함께',3,'9788965746669',5.0,'마음을 나누고 포개는 일보다 소중한 일은 없습니다. 적정심리학은 모든 것은 사람의 마음을 나누는 일에서 시작된다고 이야기합니다. 일독을 권합니다', '2018-11-03 00:00:00'),
('생각지도못한~',3,'9788901227580',5.0,'백악관 그 이후가 더 궁금한 넥스트 우먼, 미셸 오바마! 연설할 때 버락 오바마보다 더 울림있게 대중에게 다가와서 그녀의 이야기가 더욱 궁금합니다. 다음주에 책이 빨리 오길!', '2018-11-05 00:00:00'),
('글월마야',3,'9788901227580',5.0,'단숨에 읽은 책. 소박하고 군더더기 없었다.', '2018-11-20 00:00:00'),
('자목련',3,'9791188810666',5.0,'눈사람이 되어 버린 그녀, 무슨 일이 생긴 걸까. 한강의 소설을 읽는 겨울, 헤어짐도 따뜻할 수 있겠다는 막연한 생각.', '2018-11-09 00:00:00'),
('스파이디',3,'9791188810666',5.0,'그냥 끝. 담담하고 덤덤하게 써낸 글인데, 왜 눈물이 ....', '2018-11-19 00:00:00'),
('Greek Lessons',3,'9791188810666',5.0,'담담하지만 슬프다. 쉽게 읽히지만 아무나 쓸 수 없는 글, 역시 한강이다.', '2018-11-19 00:00:00'),
('prayer94',3,'9791188810666',5.0,'오랜만에 한강 작가님 작품 읽어야겠네요.', '2018-11-12 00:00:00'),
('귤',3,'9791163710592',2.0,'공부하는 데 지장은 없지만 표지가 아쉬운 건 어쩔 수 없네요', '2018-11-19 00:00:00'),
('뚱구리',3,'9791163710592',2.0,'내용은 둘째치고 표지가 정말... 10년을 거슬러 올라간 듯...', '2018-11-20 00:00:00'),
('샤인샤',3,'9791163710592',2.0,'누가 분철하는데 정답해설집을 같이 한 권으로 분철합니까;;;; 정답해설집은 빼주셔야죠!!!!!', '2018-11-22 00:00:00'),
('xcvz3',3,'9788931587012',2.0,'그냥 방송보세요... 레시피 깔끔하게 정리되있을줄 알고 샀더니 너무 별로에요;; 김수미 선생님 레시피만 있는것도 아니고 셰프레시피가 반이에요. 간장게장 파스타.... 가독성 이딴거는 다 때려치고 방송 사진 캡쳐에 대충 편집....표지빼고 다 별로네요 17000원주고 이걸 산 나를 매우 치고싶다', '2018-11-14 00:00:00'),
('라퓨타~',3,'9788931587012',5.0,'좋아요~ 음식은 확실히 정성이네요. 좋은 선물이 될 것 같아 한 권 더 구입합니다.', '2018-11-17 00:00:00'),
('곰돌이파크',3,'9788954653558',5.0,'표지가 다행히 바꼈군요', '2018-11-15 00:00:00'),
('페레미스',3,'9788954653558',5.0,'100자평에는 표지 별로라고 깠었는데 지금은 괜찮네요.뭐, 일러스트 있는 표지는 제 취향이 아니긴한데... 그래도 확실히 배경을 이상하게 빼서 캐릭터만 어색하게 덩그러니 있는 전 표지보다는 백배 천배 나아요! 내용은 이미 카카페에서 읽고 종이책은 반소장용으로 구입한거라 미리 별점 5개로 올립니다', '2018-11-15 00:00:00'),
('-',3,'9788954653558',5.0,'드디어 3부를 봅니다 ㅠ', '2018-11-21 00:00:00'),	
('이지은',3,'9788937437564',5.0,'표지가 너무 이뻐서 책이 있지만 또 샀음..ㅋㅋㅋ후회는 하지 않아요 소비는 확실한 행복 소.확.행', '2018-07-25 00:00:00'),	
('puhahasimper',3,'9788937437564',5.0,'표지가 이뻐서 이미 가지고 있지만 구입했음.', '2018-08-15 00:00:00'),	
('그것은실로',3,'9788937437564',5.0,'"슬픔은 형식이었고, 내용은 행복이었다. 행복이 슬픔이라는 공간을 채웠다."', '2018-08-05 00:00:00'),	
('힐잼',3,'9791158510244',5.0,'한 손 크기로 아담하고 귀여워요 두껍구요. 표지가 홀로그램 색상이어서 그런지 고급스럽고 아주 마음에 듭니다 5년동안 잘 사용해야죠', '2018-11-18 00:00:00'),	
('비지엠받자',3,'9791158510244',5.0,'좋아요~~ 기본 디자인 있는데 이번에 선물 하려고 이거 했는데 디자인 예뻐서 좋으네유포장 상자도 따로 했는데 예뻐요 ㅎㅎ', '2018-11-09 00:00:00'),	
('조미진',3,'9791158510244',3.0,'5년치 다이어리인줄 알고 샀다가 당황. . . 매일 한가지씩 질문에 답을 다는거네요.나름 의미가 있을것같지만 거의 일기장을 기대한 저는. . 음. . 제 잘못이죠', '2018-11-19 00:00:00'),	
('카바라도시',3,'9788962622508',5.0,'어라 이거 좀 시시하네 했다가 밑줄 긋고 있는 나를 발견.', '2018-11-13 00:00:00'),	
('quizmoon',3,'9788962622508',5.0,'참 좋다. 사족도 없구 깔끔하구. 그러나 한가지 아쉬움. 수록된 사진들이 컬러였으면 하는. 그럼 책값이 오르겠구. 그래도 만족.', '2018-11-17 00:00:00'),	
('csmc87',3,'9788962622508',2.0,'좋은 책인데 반양장도 아니고 왜 겉장을 이따위로 얇고 후지게 만드는지 도저히 이해할 수가 없다.. 겉지 만들 돈으로 본서 퀄이나 높이지? 이런 책은 망가지는 거 한순간인 거 모르나. 동아시아 반성해라 진짜.', '2018-11-20 00:00:00'),
('ahenek***',4,'9788965962823',5.0,'이 책 완전 추천!! 이 책 읽고 의료계의 현실을 알게 되고 이국종 교수의 강인함에 박수를 치게 되더군요~ 의학 서적이나 의학 드라마 무척 좋아하는데, 이 책은 진짜 읽어봐야 할 책!! 동생이 읽던거 보다가 결국 사게 된 책 !', '2018-10-16 00:00:00'),	
('mirane5***',4,'9788965962823',3.0,'투표!!!', '2018-08-11 00:00:00'),	
('tohear***',4,'9791196394509',2.0,'베스트셀러라서 기대하고 구매했는데 기대만큼은 아니네요~', '2018-09-04 00:00:00'),
('deligh***',4,'9791196394509',2.0,'가볍게 읽히지만 깊이는 얕다.', '2018-09-04 00:00:00'),
('151167***',4,'9791196394509',3.0,'고평가 된 책!!!!', '2018-07-31 00:00:00'),
('lavend***',4,'9791162202913',5.0,'완전 감성돋는 책이예요 ㅠㅠ 글귀하나하나가 공감되고 마음을 토닥토닥 해주고 위로해주는 느낌, 따뜻해지는 마음이 드는 표지도 예쁜 책이네요 https://blog.naver.com/lavenda27/221300576042', '2018-07-11 00:00:00'),
('hsj***',4,'9791162202913',5.0,'책 제목 부터 봤을 때 온통 사랑 얘기인가? 싶어서 그렇게 읽고 싶은 마음은 없었다. 마냥 사랑 얘기만 다룬 줄 알았는데 그 외의 삶에 대한 이야기와 공감할 수 있는 이야기, 위로, 추억을 들춰볼 수 있는 내용들이 가득해 이 책을 읽는 동안은 나에게 힐링을 가질 수 있는 시간이였다.', '2018-05-16 00:00:00'),
('hanu***',4,'9791187119845',4.0,'거침없는 문장들이 재미를 더해주네요', '2018-07-18 00:00:00'),
('tldkf***',4,'9791187119845',4.0,'따뜻한책입니다 작가가 유머러스하면서도 진지하면서도 가볍지만은 않은 책입니다 친구에게 힘든이에게 건내주고깊은 책이네요^^', '2017-12-28 00:00:00'),
('redca***',4,'9791187119845',5.0,'흔하고 난잡한 이야기인가 했다. 위로를 한답시고 다른 이야기를 하고. 세상 이치를 안다고 말하지만 정작 아픔을 어루만져 주지 못하는 흔한 유행서적인가 했다. 하지만. 읽다보면 필자가 많은 생각과 고민을 했다는 것을 알게된다. 이래라 저래라 하지 않는. 그리고 섣불리 응원하지 않는. 물끄러미 응수하고 있으나. 나를 어루만져 주는 글. 참 좋은 책이다', '2017-06-25 00:00:00'),
('psj6***',4,'9791187119845',3.0,'나 자신을 잃어버리고 자아조차 잃어버린채 살아가는 현대인들에게 보내는 특별한 메시지가 요즘의 나에게 큰 격려가 되고있다 난 나처럼 살지 못했고 그래서 지금은 참많이도 아팠는데 이책을 접하고 난 마음의 위로와 평안을 얻었다', '2017-05-29 00:00:00'),
('kimbeom***',4,'9788931587012',5.0,'수미네 반찬 정말 재밌게 보고 있습니다! 자취생인데 정말 피가되고 살이 되는 소중한 꿀팁들이 너무 많아요~ 남자인 제가 보기에도 부담 없이 친절한 설명들 덕분에 요즘 요리에 재미를 붙이고 있습니다. 수미 선생님 짱짱입니다!!', '2018-11-22 00:00:00'),
('gurwns9***',4,'9788931587012',3.0,'이거 프로그램도 재미있게 보고있는데 !! ㅎㅎ 책으로 나왔다고 하니까 기대됩니다 ㅎㅎ 봐야겠어요!!ㅎㅎ', '2018-11-20 00:00:00'),
('junga0***',4,'9788965706908',5.0,'오랜만에 줄 그어 가면서 읽었습니다. 저는 리더는 아니지만 조직생활을 해나가는데 있어서 배워야할 많은 내용을 담고 있었습니다.', '2018-11-13 00:00:00'),
('mirane5***',4,'9788901223032',3.0,'이번에구매해서 오늘받았는데 글로서 공감하고 소통할수있다는게 정말좋네요^-^ 다 읽어도 또다시보고싶은책~♡', '2018-07-13 00:00:00'),
('ansdj852***',4,'9791195522125',3.0,'내용도좋고잘읽어집니다', '2018-11-05 00:00:00'),
('tldn***',4,'9791195522125',5.0,'이야기 하나하나,인생에서 도움되는 이야기네요.', '2018-08-07 00:00:00'),
('gua***',4,'9791195522125',4.0,'흔히 생각할 수 있지만 글로 쓰기 어려운 말에 대한 느낌들. 특히 너무 많은 말들이 난무하는 지금의 시대에..', '2017-12-04 00:00:00'),
('mirane5***',4,'9788925563350',3.0,'가벼운마음으로 읽기편한책이면서 내용은또가볍지않게~감동있고~공감되고^^ 내마음을알아주는듯한 따뜻한책이네요 구매하길잘했어요~♡♡♡', '2018-06-09 00:00:00'),
('uh2***',4,'9788957369364',5.0,'잘봤어요~ 공감되는 부분이 많아서인지 알차게 읽었네요 ㅎㅎ', '2018-08-07 00:00:00'),
('moom***',4,'9788957369364',3.0,'쏘쏘', '2018-05-10 00:00:00'),
('ansdj852***',4,'9788972756194',5.0,'왜 베스트셀러인지알겟습니다 처음에는 너무두껍다라고생각했었는데 읽다보니연계성도있고예상도할수있어서재미있게읽었던책인것같습니다 굿입니다', '2018-09-30 00:00:00'),
('익명',4,'9788972756194',5.0,'정말 막힘없이 술술 읽히는 책입니다! 다 읽고 몰려오는 큰 감동 최고의 책입니다', '2017-12-28 00:00:00'),
('ahrl***',4,'9788972756194',5.0,'손에서 뗄수 없는 책~~ 재미와감동이 있는 책~ 추천하고 싶은 책~', '2017-10-29 00:00:00'),
('cook0***	',4,'9788972756194',5.0,'너무 감동적이고 재미있는 책입니다. 책 페이지 수가 줄어드는 것이 아쉬웠던 적은 정말 오랜만이네요. 중간중간 긴장감을 이어가는 추리들과 미스터리가 가득한 이야기들, 혹은 사람과의 관계에 대해서 심오하게 풀어낸 책 같다는 생각이 듭니다. 사회적으로 소외되고 고립된 사람들의 놀라운 기적이야기가 담겨있는 잡화점. 꼭 한번 읽어보시길 바랍니다', '2017-04-10 00:00:00'),
('뽀샤시',5,'9788965962823',5.0,'좋아요', '2018-11-03 00:00:00'),
('히나짱',5,'9788965962823',5.0,'사실 1권만 보면, 그들의 헌신에 감탄하면서도 그들의 현실에 답답해지는 순간들이 많아요. 과연 2권에서는 어떤 이야기가 펼쳐질지, 솔직히 궁금하네요.', '2018-10-16 00:00:00'),
('doona09',5,'9788965962823',4.0,'가볍게 읽어보려고 산 책이였는데 결코 가볍지않은 책이었다. 이국종교수에대해 생각하게 되고 우리아이가 살아갈 이세상에대해 생각하게 만드는 책이었다 참담하지만 희망을 버리지말아야할 이세상은 과연 어떤지...', '2018-10-31 00:00:00'),
('반디블로그',5,'9788959895526',5.0,'『트렌드 코리아 2019』 - 내년에는 돼지꿈을 꿀 수 있을까?', '2018-11-15 00:00:00'),
('연듀',5,'9788959895526',4.5,'얼마나 접목시킬 수 있을지가 관건이겠지만, 읽어놓아야 안심이 되는 책인 것 같아요.', '2018-11-17 00:00:00'),
('jacobmom11',5,'9788965962830',5.0,'너무 좋았던..정말 내가 읽었던 책중에 손가락안에드는 책이고、 주위에 읽어보라고 권해주고 싶은 책이다.', '2018-11-29 00:00:00'),
('doa9417',5,'9788965706908',5.0,'요즘 이야기를 다루고있어 좋습니다.', '2018-11-15 00:00:00'),
('쫑이파',5,'9788965706908',5.0,'삼성전자의 반도체신화를 이끌었던 권오현회장의 삼성 이야기!!넘 기대됩니다!!', '2018-09-14 00:00:00'),
('레인메이커',5,'9788965706908',4.0,'초격차 라는 단어를 요즘 참 많이 듣습니다. 삼성에서의 정의가 궁금합니다.', '2018-11-10 00:00:00'),
('acobmom11',5,'9791186686348',5.0,'조금 웃기기도 하고 엉뚱해서 피식하고 웃게되는..재밌는책이네요', '2018-07-15 00:00:00'),
('물방울스팅',5,'9791186686348',5.0,'지금 읽고 있는데 베스트셀러 답게 책이 좋네요^^', '2018-09-22 00:00:00'),
('kyo1000c',5,'9791186686348',5.0,'산문으로 주로 접했던 류시화님의 글을 보니 기대가 되네요', '2018-11-10 00:00:00'),
('김은서',5,'9788998274795',5.0,'반전에 반전을 거듭나는 책 너무 재미있어요.', '2018-09-22 00:00:00'),
('kdwksh0909',5,'9788998274795',4.0,'재밌지만 결말이 너무 뻔해 아쉽', '2018-10-25 00:00:00'),
('ny2jeter',5,'9788998274795',4.0,'조만간 영화로 나올것 같은..', '2018-11-11 00:00:00'),
('kyo1000c',5,'9788901223032',5.0,'한번 쉬고 가게 하는 책. 힐링 북~', '2018-06-18 00:00:00'),
('지혜롭자',5,'9788901223032',5.0,'열심히만 살려고했고 힘이 없는데 힘내자고만 하며 살았던거같다. 조금은 내려놓아도 되겠구나 라는 생각의 자리가 생긴거같다. 책을 보는동안 공감되고 재밌고 스스로를 위로하며 편안하고 행복한 시간이었던것같다. 강추^^', '2018-05-09 00:00:00'),
('이유장',5,'9791195888221',5.0,'좋은 거 같다 오늘 읽어 봐야겠다', '2018-03-06 00:00:00'),
('kimnari85',5,'9791195888221',5.0,'상당히 책이 두껍네요. 일본에서 엄청 인기있었다고 일본친구하테 듣고 구매로 기대됩니다.', '2018-09-12 00:00:00'),
('익명',5,'9791195888221',2.0,'별로에요별로에요별로에요별로에요', '2018-02-26 00:00:00'),
('홀리',5,'9791186665503',4.0,'릿쇼대학이 아니고 릿교대학 아닌가요?', '2017-03-30 00:00:00'),
('okkjy123',5,'9791186665503',5.0,'좋아요 아주 좋습니다 이런책을 진작에 접해야햇는데 너무늦어서 아쉽내요', '2017-04-20 00:00:00'),
('dmgkgkkg',5,'9791195522125',4.0,'볼만합니다. 감사합니다. 추천', '2016-09-22 00:00:00'),
('yieunhi7',5,'9791195522125',5.0,'공감되고 반성도되고 생각도 되는 책', '2016-12-29 00:00:00'),
('kksm4249',5,'9791186274156',5.0,'힘든 시간을 겪고 있는 분들은.. 안좋은 생각만 하기보다는 이런 추천하는 마음을 다스리는 글과 책도 읽으면서 위로 받았으면 한다', '2017-08-08 00:00:00'),
('tjfl927',5,'9791186274156',5.0,'읽으려고 산지가 꽤 됐는데 다른책들 때문에 아직 읽지를 못했네요.. 간단평 보니까 좋던데 빠른 시일내에 읽어보도록 해야겠어요~^^', '2018-01-18 00:00:00'),
('나야wd',5,'9791186274156',5.0,'너무 괜찮은 책이예요 나이가 드니.인가놘계에서 힘이 들때 있는데 제목부터가.넘 좋네여', '2017-12-12 00:00:00'),
('줄리박',5,'9791160560510',5.0,'재미있는 인생책이예요. 정말 잼나요 꼭읽어보세요', '2018-08-01 00:00:00'),
('oim5151',5,'9791160560510',5.0,'주변의권유로 열두발자국을 구매한지는 좀됐는데....이제야읽네요.', '2018-07-06 00:00:00'),
('cherami79',5,'9788972756194',5.0,'지루한공간에서 혹은 출근길에 읽으면 시간이 금방갑니다.', '2016-06-15 00:00:00'),
('kimhanbi14',5,'9788972756194',5.0,'진짜 왜 꾸준히 인기있는 소설인지 알것같아요 너무 재미있습니다', '2017-03-09 00:00:00'),
('doa9417',5,'9788972756194',5.0,'쉽고 재밌게 읽을 수 있는 책입니다...가벼운 책을 읽고싶은 분들께 추천합니다.', '2015-12-15 00:00:00'),
('rjsqkdthsu',6,'9788965962823',5.0,'활자로 남겨둔 기록은 절대로 사라지지 않아요..이 기록으로 인해 변화하는 날이 오길', '2018-11-23 00:00:00'),
('가을기다림',6,'9788965962823',5.0,'책을 통해서 좋은 성립들을 느껴보고 싶네요. 2권도 곧 주문입니다.', '2018-11-23 00:00:00'),
('junho011',6,'9788965962823',5.0,'사회가 아직도 정의를 위해 가고 있다는 것은 이런 분들이 계속 노력하고 있기 때문이 아닐까', '2018-11-23 00:00:00'),
('tmvkzmf',6,'9791196067694',5.0,'좋은 책이네요 ~', '2018-11-23 00:00:00'),
('tripfog',6,'9791196067694',5.0,'올해 꼭 읽어야할 책', '2018-11-22 00:00:00'),
('사필귀정',6,'9791196067694',5.0,'인생의 책을 만닌 것만 같아요. 엑설런트!', '2018-11-22 00:00:00'),
('해피맨',6,'9788959895526',5.0,'추천합니다', '2018-11-23 00:00:00'),
('tyiansh',6,'9788959895526',4.0,'유익합니다. 감사합니다', '2018-11-22 00:00:00'),
('zoshy',6,'9788931587012',5.0,'레서피 급하게 적어댕겼는데 이젠 책이 나와서 정말 다행이라는 생각듬 ㅎㅎ 바로구매함', '2018-11-22 00:00:00'),
('CEUNJOO',6,'9791186274156',5.0,'추천받아 구매했어요 기대됩니다', '2018-11-22 00:00:00'),
('eeyeshin',6,'9791186274156',1.0,'산 걸 후회하는 유일한 책', '2018-11-21 00:00:00'),	
('wnqkdrhdrl',6,'9788965746669',5.0,'그래,그렇구나~ 네 마음이 힘들었겠구나 치유되는는 책입니다.', '2018-11-23 00:00:00'),	
('iwun11',6,'9788965746669',5.0,'마음에 와닿는 좋은 글 입니다~♡', '2018-11-20 00:00:00'),	
('코스모스',6,'9791187119845',5.0,'공감 200%되는책. 술술읽히긴하지만 계속 생각하게 하는책.', '2018-11-23 00:00:00'),	
('isy710',6,'9791187119845',5.0,'사례마다 공감가는 이유는 뭘까요? ㅎㅎ 저자의 답변이 도움 많이 되었습니다.:)', '2018-11-23 00:00:00'),
('mskim****',6,'9791130619682',5.0,'나를 사랑하지 않고 인생을 살아갈 수 있으랴..', '2018-11-23 00:00:00'),
('remembrance',6,'9791130619682',5.0,'친구 부부에게 사주려고 구입해서 읽어봤는데, 내용이 굉장히 알차네요. 많이 배웠어요ㅎㅎ', '2018-11-19 00:00:00');


# VIEW for see all comments in once
create view comments
as
SELECT `ISBN`, `id`, 1 AS `store`, `rate`, `comment`, `time` 
FROM `web_mini_project`.`our_comment`
UNION
SELECT `ISBN`, `id`, `pubid` AS `store`, `rate`, `comment`, `time`
FROM `web_mini_project`.`other_comment`;

# STORED PROCEDURE for get rank with ISBN
# USAGE: call get_rank('9788931587012');
DELIMITER $$$
DROP PROCEDURE IF EXISTS get_rank $$$
CREATE PROCEDURE get_rank(ISBN CHAR(13))
BEGIN
	select `week`, s.id as store_id, rank
    from store s left outer join
		(SELECT `week`, store_id, 1 as rank FROM rank WHERE rank01 = ISBN
		union
		SELECT `week`, store_id, 2 as rank FROM rank WHERE rank02 = ISBN
		union
		SELECT `week`, store_id, 3 as rank FROM rank WHERE rank03 = ISBN
		union
		SELECT `week`, store_id, 4 as rank FROM rank WHERE rank04 = ISBN
		union
		SELECT `week`, store_id, 5 as rank FROM rank WHERE rank05 = ISBN
		union
		SELECT `week`, store_id, 6 as rank FROM rank WHERE rank06 = ISBN
		union
		SELECT `week`, store_id, 7 as rank FROM rank WHERE rank07 = ISBN
		union
		SELECT `week`, store_id, 8 as rank FROM rank WHERE rank08 = ISBN
		union
		SELECT `week`, store_id, 9 as rank FROM rank WHERE rank09 = ISBN
		union
		SELECT `week`, store_id, 10 as rank FROM rank WHERE rank10 = ISBN
		union
		SELECT `week`, store_id, 11 as rank FROM rank WHERE rank11 = ISBN
		union
		SELECT `week`, store_id, 12 as rank FROM rank WHERE rank12 = ISBN
		union
		SELECT `week`, store_id, 13 as rank FROM rank WHERE rank13 = ISBN
		union
		SELECT `week`, store_id, 14 as rank FROM rank WHERE rank14 = ISBN
		union
		SELECT `week`, store_id, 15 as rank FROM rank WHERE rank15 = ISBN) t
        on s.id = t.store_id
    order by 2, 1;
END $$$
DELIMITER ;


# STORED PROCEDURE for get comments with ISBN
# USAGE: call get_rank('9788931587012');
DELIMITER $$$
DROP PROCEDURE IF EXISTS get_comments $$$
CREATE PROCEDURE get_comments(BookNo CHAR(13))
BEGIN
	select c.id as id, `name`, rate, `comment`, date(`time`) as time
	from comments as c, store as s
	where ISBN = BookNo and c.store = s.id;
END $$$
DELIMITER ;

# STORED PROCEDURE for get price with ISBN
# USAGE: call get_price('9788931587012');
DELIMITER $$$
DROP PROCEDURE IF EXISTS get_price $$$
CREATE PROCEDURE get_price(BookNo CHAR(13))
BEGIN
	select `name`, price, link 
    from books, store
    where ISBN = BookNo and store.id = books.store_id;
END $$$
DELIMITER ;

# STORED PROCEDURE for get rate with ISBN
# USAGE: call get_rate('9788931587012');
DELIMITER $$$
DROP PROCEDURE IF EXISTS get_rate $$$
CREATE PROCEDURE get_rate(BookNo CHAR(13))
BEGIN
	select 5 as rate, count(rate) as cnt from comments where ISBN = BookNo and rate =5.0
	union
	select 4 as rate, count(rate) as cnt from comments where ISBN = BookNo and rate =4.0
	union
	select 3 as rate, count(rate) as cnt from comments where ISBN = BookNo and rate =3.0
	union
	select 2 as rate, count(rate) as cnt from comments where ISBN = BookNo and rate =2.0
	union
	select 1 as rate, count(rate) as cnt from comments where ISBN = BookNo and rate =1.0;
END $$$
DELIMITER ;

# STORED PROCEDURE for front page rank1
# USAGE: call get_rank1();
DELIMITER $$$
DROP PROCEDURE IF EXISTS get_rank1$$$
CREATE PROCEDURE get_rank1()
BEGIN
	select `ISBN`, `name`, img_link 
	from book_info
	where ISBN = (select rank01 from rank where store_id=1 order by week desc limit 1)
	union
	select `ISBN`, `name`, img_link 
	from book_info
	where ISBN = (select rank02 from rank where store_id=1 order by week desc limit 1)
	union
	select `ISBN`, `name`, img_link 
	from book_info
	where ISBN = (select rank03 from rank where store_id=1 order by week desc limit 1);
END $$$
DELIMITER ;

# STORED PROCEDURE for front page rank2
# USAGE: call get_rank2();
DELIMITER $$$
DROP PROCEDURE IF EXISTS get_rank2$$$
CREATE PROCEDURE get_rank2()
BEGIN
	select `ISBN`, `name`, img_link 
	from book_info
	where ISBN = (select rank07 from rank where store_id=1 order by week desc limit 1)
	union
	select `ISBN`, `name`, img_link 
	from book_info
	where ISBN = (select rank10 from rank where store_id=1 order by week desc limit 1)
	union
	select `ISBN`, `name`, img_link 
	from book_info
	where ISBN = (select rank15 from rank where store_id=1 order by week desc limit 1);
END $$$
DELIMITER ;

# STORED PROCEDURE for front page rank1
# USAGE: call get_rank_all();
DELIMITER $$$
DROP PROCEDURE IF EXISTS get_rank_all$$$
CREATE PROCEDURE get_rank_all()
BEGIN
	select 2 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank01 from rank where store_id=2 order by week desc limit 1)
	union
	select 2 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank02 from rank where store_id=2 order by week desc limit 1)
	union
	select 2 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank03 from rank where store_id=2 order by week desc limit 1)
    union
    select 3 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank01 from rank where store_id=3 order by week desc limit 1)
	union
	select 3 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank02 from rank where store_id=3 order by week desc limit 1)
	union
	select 3 as `no`, `ISBN`, `name` 
	from book_info
	where ISBN = (select rank03 from rank where store_id=3 order by week desc limit 1)
    union
    select 4 as `no`, `ISBN`, `name` 
	from book_info
	where ISBN = (select rank01 from rank where store_id=4 order by week desc limit 1)
	union
	select 4 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank02 from rank where store_id=4 order by week desc limit 1)
	union
	select 4 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank03 from rank where store_id=4 order by week desc limit 1)
    union
    select 5 as `no`, `ISBN`, `name` 
	from book_info
	where ISBN = (select rank01 from rank where store_id=5 order by week desc limit 1)
	union
	select 5 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank02 from rank where store_id=5 order by week desc limit 1)
	union
	select 5 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank03 from rank where store_id=5 order by week desc limit 1)
    union
    select 6 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank01 from rank where store_id=6 order by week desc limit 1)
	union
	select 6 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank02 from rank where store_id=6 order by week desc limit 1)
	union
	select 6 as `no`, `ISBN`, `name`
	from book_info
	where ISBN = (select rank03 from rank where store_id=6 order by week desc limit 1);
END $$$
DELIMITER ;


# STORED PROCEDURE for get rate with ISBN
# USAGE: call get_rank_store(1);
DELIMITER $$$
DROP PROCEDURE IF EXISTS get_rank_store $$$
CREATE PROCEDURE get_rank_store(storID INT)
BEGIN
	(select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 1 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank01 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 2 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank02 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 3 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank03 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 4 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank04 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 5 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank05 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 6 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank06 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 7 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank07 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 8 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank08 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 9 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank09 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 10 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank10 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 11 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank11 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 12 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank12 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 13 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank13 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 14 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank14 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1)
    union
    (select s.`name` as site, b.`name`, `ISBN`, r.`week`, b.img_link, 15 as rank, b.author as author
	from rank r, book_info b, store s
	where r.rank15 = b.ISBN and r.store_id=s.id and r.store_id = storID
	order by `week` desc limit 1);
END $$$
DELIMITER ;

#################################
#        USAGE EXAMPLES         #
#################################
USE `web_mini_project`;
select rank01, rank02, rank03 from rank where store_id=1 order by 1 desc limit 1;

call get_rank('9788965962830');

select * from book_info where ISBN = '9788959895526';
select * from store;
select * from comments;
call get_comments('9788959895526');


select * from books where ISBN = '9788959895526';
select * from store;

call get_price('9788959895526');	
select age, fun, practical, dev, expert from book_status where ISBN = '9788959895526';

select week from rank group by week;

call get_rate('9788959895526');

call get_rank1();
call get_rank_all();
call get_rank_store(2);