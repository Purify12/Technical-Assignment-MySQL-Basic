-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Use Database --
USE bookstore;

-- Show Tables --
SHOW TABLES;

-- Create Tables --
CREATE TABLE `books` (
  `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `author1` VARCHAR(100) NOT NULL,
  `author2` VARCHAR(100) DEFAULT NULL,
  `author3` VARCHAR(100) DEFAULT NULL,
  `title` VARCHAR(100) DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `place_sell` CHAR(3),
  `stock` INT(11) DEFAULT 0,
  `creation_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
);

-- Update Column --
	-- ADD --
ALTER TABLE `books`
ADD
    `price` INT DEFAULT 0,
ADD
    STATUS ENUM('available', 'out of stock', 'limited')

	-- DROP --
ALTER TABLE `books`
DROP COLUMN `place_sell`


-- Insert 3 Data untuk tiap column books --
INSERT  INTO `books`(`id`,`author1`,`author2`,`author3`,`title`,`description`,`stock`,`creation_date`,`price`,`status`) VALUES 
(1,'Jaya','Agung','Setya','Semuanya Dongeng','Ini buku dongeng saja',10,'2021-10-10 10:10:10',50000,'available'),
(2,'Bob','Alice','Oscar','Story of My Life','Ini buku kisah sukses Bob dan Alice',10,'2021-12-01 16:11:10',100000,'available'),
(3,'Chel','Sei','Seno','Hari Esok','Ini buku tentang cara bertahan di hari esok',10,'2021-12-01 16:13:10',75000,'available')

-- Menampilkan Isi Data Tabel Books--
SELECT * FROM `books`

-- Select dengan ALIAS untuk id,author1,author2,author3 --
SELECT id AS ID, author1 AS A1, author2 AS A2, author3 AS A3 FROM `books`

-- Select data memakai where dengan id tertentu --
SELECT * FROM `books` WHERE id=1

-- Select data memakai where dengan operator logical AND --
SELECT * FROM `books` WHERE id>1 AND id<=3

-- Select data memakai where dengan operator logical OR --
SELECT * FROM `books` WHERE title='Semuanya Dongeng' OR title='Hari Esok'

-- Select data memakai where dengan operator logical NOT --
SELECT * FROM `books` WHERE author1!='Chel'

-- Select Column ASC by id --
SELECT * FROM `books` ORDER BY id ASC;

-- Select Column dengan Limit untuk 2 row --
SELECT * FROM `books` LIMIT 2

-- Update Data Column --
UPDATE `books` SET author1='Joko', price=60000
WHERE id = 1 

-- Delete Data Column --
DELETE FROM
    books
WHERE
    id = 2;

-- (pelengkap) Delete Table books dan database bookstore--
DROP TABLES `books`
DROP DATABASE `bookstore`


