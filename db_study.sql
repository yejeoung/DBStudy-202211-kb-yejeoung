-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.31 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- db_study 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `db_study`;
CREATE DATABASE IF NOT EXISTS `db_study` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_study`;

-- 테이블 db_study.order_dtl 구조 내보내기
DROP TABLE IF EXISTS `order_dtl`;
CREATE TABLE IF NOT EXISTS `order_dtl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL DEFAULT '0',
  `proder_id` int NOT NULL DEFAULT '0',
  `order_stock` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.order_dtl:~0 rows (대략적) 내보내기
DELETE FROM `order_dtl`;
INSERT INTO `order_dtl` (`id`, `order_id`, `proder_id`, `order_stock`) VALUES
	(1, 1, 1, 3),
	(2, 1, 2, 10);

-- 테이블 db_study.order_mst 구조 내보내기
DROP TABLE IF EXISTS `order_mst`;
CREATE TABLE IF NOT EXISTS `order_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.order_mst:~5 rows (대략적) 내보내기
DELETE FROM `order_mst`;
INSERT INTO `order_mst` (`id`, `user_id`) VALUES
	(1, 1);

-- 테이블 db_study.product_mst 구조 내보내기
DROP TABLE IF EXISTS `product_mst`;
CREATE TABLE IF NOT EXISTS `product_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.product_mst:~6 rows (대략적) 내보내기
DELETE FROM `product_mst`;
INSERT INTO `product_mst` (`id`, `product_name`, `product_price`) VALUES
	(1, '스타벅스 블랙 텀블러', 25000),
	(2, '스타벅스 화이트 텀블러', 30000),
	(3, '스타벅스 블루 텀블러', 20000),
	(4, '스타벅스 블랙 머그컵', 15000),
	(5, '스타벅스 화이트 머그컵', 20000),
	(6, '스타벅스 블루 머그컵', 25000);

-- 테이블 db_study.student_mst 구조 내보내기
DROP TABLE IF EXISTS `student_mst`;
CREATE TABLE IF NOT EXISTS `student_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `student_year` int NOT NULL DEFAULT '0',
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.student_mst:~11 rows (대략적) 내보내기
DELETE FROM `student_mst`;
INSERT INTO `student_mst` (`id`, `name`, `student_year`, `score`) VALUES
	(1, '임지현', 1, 80),
	(2, '신경수', 2, 100),
	(3, '고희주', 3, 75),
	(4, '문승주', 1, 85),
	(5, '장건녕', 2, 95),
	(6, '박수현', 3, 90),
	(7, '황석민', 1, 80),
	(8, '박준현', 2, 100),
	(9, '이승아', 3, 90),
	(10, '김수현', 1, 75),
	(12, NULL, 1, 100);

-- 테이블 db_study.study_notice_img 구조 내보내기
DROP TABLE IF EXISTS `study_notice_img`;
CREATE TABLE IF NOT EXISTS `study_notice_img` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notice_id` int NOT NULL DEFAULT '0',
  `img_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `img_name` (`img_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_notice_img:~0 rows (대략적) 내보내기
DELETE FROM `study_notice_img`;
INSERT INTO `study_notice_img` (`id`, `notice_id`, `img_name`) VALUES
	(1, 1, 'a.png'),
	(2, 1, 'b.png'),
	(3, 2, 'c.png'),
	(4, 2, 'd.png'),
	(5, 2, 'e.png'),
	(6, 3, 'f.png'),
	(7, 3, 'g.png');

-- 테이블 db_study.study_notice_mst 구조 내보내기
DROP TABLE IF EXISTS `study_notice_mst`;
CREATE TABLE IF NOT EXISTS `study_notice_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `writer_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_notice_mst:~0 rows (대략적) 내보내기
DELETE FROM `study_notice_mst`;
INSERT INTO `study_notice_mst` (`id`, `title`, `content`, `writer_id`) VALUES
	(1, '첫 번째 공지사항', 'aaa', 1),
	(2, '두 번째 공지사항', 'bbb', 1),
	(3, '세 번째 공지사항', 'ccc', 2);

-- 테이블 db_study.study_writer_mst 구조 내보내기
DROP TABLE IF EXISTS `study_writer_mst`;
CREATE TABLE IF NOT EXISTS `study_writer_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.study_writer_mst:~0 rows (대략적) 내보내기
DELETE FROM `study_writer_mst`;
INSERT INTO `study_writer_mst` (`id`, `name`) VALUES
	(1, '김준일'),
	(2, '김준이');

-- 테이블 db_study.user_dtl 구조 내보내기
DROP TABLE IF EXISTS `user_dtl`;
CREATE TABLE IF NOT EXISTS `user_dtl` (
  `id` int NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.user_dtl:~0 rows (대략적) 내보내기
DELETE FROM `user_dtl`;
INSERT INTO `user_dtl` (`id`, `phone`, `address`, `create_date`, `update_date`) VALUES
	(1, NULL, NULL, '2022-12-09 10:48:41', '2022-12-09 10:48:41'),
	(2, NULL, NULL, '2022-12-09 10:48:41', '2022-12-09 10:48:41'),
	(3, NULL, NULL, '2022-12-09 10:48:41', '2022-12-09 10:48:41'),
	(4, NULL, NULL, '2022-12-09 10:48:41', '2022-12-09 10:48:41');

-- 테이블 db_study.user_mst 구조 내보내기
DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE IF NOT EXISTS `user_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 db_study.user_mst:~3 rows (대략적) 내보내기
DELETE FROM `user_mst`;
INSERT INTO `user_mst` (`id`, `username`, `password`, `name`, `email`, `create_date`, `update_date`) VALUES
	(1, 'aaa', '1234', '김준일', 'aaa@gmail.com', '2022-12-09 10:48:41', '2022-12-09 10:48:41'),
	(2, 'bbb', '1234', '김준일', 'bbb@gmail.com', '2022-12-09 10:48:41', '2022-12-09 10:48:41'),
	(3, 'ccc', '1234', '김준일', 'ccc@gmail.com', '2022-12-09 10:48:41', '2022-12-09 10:48:41'),
	(4, 'ddd', '1234', '김준일', 'ddd@gmail.com', '2022-12-09 10:48:41', '2022-12-09 10:48:41');

-- 트리거 db_study.user_mst_after_insert 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_after_insert`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_after_insert` AFTER INSERT ON `user_mst` FOR EACH ROW BEGIN
	INSERT into
		user_dtl
		(id, create_date, update_date)
	values
		(NEW.id, NOW(), NOW());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 트리거 db_study.user_mst_before_delete 구조 내보내기
DROP TRIGGER IF EXISTS `user_mst_before_delete`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `user_mst_before_delete` BEFORE DELETE ON `user_mst` FOR EACH ROW BEGIN
	delete
	from
		user_dtl
	where
		id = OLD.id;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
db_studydb_studyuser_dtl