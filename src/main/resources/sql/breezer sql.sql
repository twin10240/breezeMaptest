-- 테이블 생성

create table member(
idx INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(15),
age INT
);

create table maptest(
idx bigint unsigned NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
image varchar(255) NOT NULL,
lat varchar(255) NOT NULL,
lot varchar(255) NOT NULL,

PRIMARY KEY (idx)
);

INSERT INTO maptest VALUES (idx, '샌프란시스코', '/bigdata/workspace/breezetest/webapp/assets/images/pic01.jpg', '38.031350', '-122.229343');
INSERT INTO maptest VALUES (idx, '로스앤젤레스', '/bigdata/workspace/breezetest/webapp/assets/images/pic02.jpg', '34.298848', '-118.231447');
INSERT INTO maptest VALUES (idx, '라스베거스', '/bigdata/workspace/breezetest/webapp/assets/images/pic03.jpg', '36.261106', '-115.095842');
INSERT INTO maptest VALUES (idx, '솔트레이크 시티', '/bigdata/workspace/breezetest/webapp/assets/images/pic04.jpg', '41.162476', '-111.762637');

INSERT INTO maptest VALUES (idx, '시카고', '/bigdata/workspace/breezetest/webapp/assets/images/pic05.jpg', '41.878773', '-87.628927');
INSERT INTO maptest VALUES (idx, '라피엣', '/bigdata/workspace/breezetest/webapp/assets/images/pic06.jpg', '40.397301', '-86.853795');
INSERT INTO maptest VALUES (idx, '뉴캐슬', '/bigdata/workspace/breezetest/webapp/assets/images/pic07.jpg', '39.969984', '-85.350588');

INSERT INTO maptest VALUES (idx, '콜럼버스', '/bigdata/workspace/breezetest/webapp/assets/images/pic08.jpg', '40.035443', '-83.016152');
INSERT INTO maptest VALUES (idx, '뉴 필라델피아', '/bigdata/workspace/breezetest/webapp/assets/images/pic09.jpg', '40.583404', '-81.439145');
INSERT INTO maptest VALUES (idx, '피츠버그', '/bigdata/workspace/breezetest/webapp/assets/images/pic10.jpg', '40.485986', '-80.029161');
INSERT INTO maptest VALUES (idx, '워싱턴', '/bigdata/workspace/breezetest/webapp/assets/images/pic11.jpg', '38.977571', '-77.018865');

INSERT INTO maptest VALUES (idx, '필라델피아', '/bigdata/workspace/breezetest/webapp/assets/images/pic12.jpg', '40.028393', '-75.195744');
INSERT INTO maptest VALUES (idx, '뉴욕 ', '/bigdata/workspace/breezetest/webapp/assets/images/pic13.jpg', '40.774577', '-73.980697');
INSERT INTO maptest VALUES (idx, '보스턴 ', '/bigdata/workspace/breezetest/webapp/assets/images/pic14.jpg', '42.435201', '-71.047600');

select * from maptest;

drop TABLE maptest;

-- insert
INSERT INTO member(name, age) VALUES ('test02', 25);

-- select
SELECT * FROM member;

-- drop
drop TABLE member;

alter table post add fav bigint default '0'; 

INSERT INTO post VALUES (idx, 'twin10240@naver.com', now(), now(), 'photo images', 'content', '비트컴퓨터', '37.495045', '127.027579', 1, '01', 
30000, 4.5, 1);

INSERT INTO post VALUES (idx, 'twin10240@naver.com', now(), now(), 'photo images', 'content', '비트컴퓨터', '37.495045', '127.027579', 1, '01', 
30000, 4.5, 1);

SELECT * FROM post where location = '비트컴퓨터';

SELECT CONCAT('') from maptest;


COMMIT;