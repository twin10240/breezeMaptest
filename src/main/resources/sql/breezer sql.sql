-- 테이블 생성

create table member(
idx INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(15),
age INT
);

-- insert
INSERT INTO member(name, age) VALUES ('test02', 25);

-- select
SELECT * FROM member;

-- drop
drop TABLE member;