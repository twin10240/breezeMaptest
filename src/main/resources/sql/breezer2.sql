CREATE TABLE IF NOT EXISTS post (
  `idx` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `userId` varchar(50) DEFAULT NULL COMMENT 'userId',
  `postDateTime` datetime NOT NULL COMMENT 'POST_DATE',
  `tripDate` date NOT NULL COMMENT 'TRIP_DATE',
  `photo` varchar(1000) NOT NULL COMMENT 'PHOTO',
  `content` varchar(500) NOT NULL COMMENT 'CONTENT',
  `location` varchar(100) DEFAULT NULL COMMENT 'LOCATION',
  `lat` varchar(15) DEFAULT NULL COMMENT 'LAT',
  `lot` varchar(15) DEFAULT NULL COMMENT 'LON',
  `tourIdx` bigint(20) DEFAULT NULL COMMENT 'TOUR_IDX',
  `category` char(2) DEFAULT NULL COMMENT 'CATEGORY',
  `price` float DEFAULT NULL COMMENT 'PRICE',
  `score` float DEFAULT NULL COMMENT 'SCORE',
  `like` bigint(20) NOT NULL DEFAULT '0' COMMENT 'LIKE',
  PRIMARY KEY (`idx`),
  KEY `FK_TB_USER_TO_TB_POST` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='포스트';

INSERT INTO post VALUES (idx, 'twin10240@naver.com', now(), now(), 'photo images', 'content', '비트컴퓨터', '37.495045', '127.027579', 1, '01', 30000, 4.5, 1);