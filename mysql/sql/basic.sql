
USE dolphin;

SELECT * FROM member_copy1;

-- 컬럼 추가
ALTER TABLE member_copy1 ADD COLUMN nickname VARCHAR(45);

ALTER TABLE member_copy1 ADD COLUMN nameEng VARCHAR(45) AFTER name;


-- 컬럼 데이터 속성변경
ALTER TABLE member_copy1 MODIFY COLUMN nickname CHAR(90);


-- 컬럼 명칭+데이터 속성 변경
ALTER TABLE member_copy1 CHANGE COLUMN nickname starname varchar(45);


-- 컬럼 삭제
ALTER TABLE member_copy1 DROP COLUMN starname;


-- row 삭제
SELECT seq, id, pw FROM member_copy1;

DELETE FROM member_copy1 WHERE seq = 22;

UPDATE member_copy1 SET 
id = 'test11' 
WHERE
seq = 21 
AND id = 'KILOWARD96';


-- 문자열검색창
show variables like 'char%';

select * from member_copy1;

select * from member_copy1
WHERE 1=1
-- AND name LIKE 'Lee%'
-- AND name LIKE '%gwan'
AND name LIKE '%Gyu%';


-- 숫자검색창
SELECT * FROM member_copy1
WHERE 1=1
-- AND gender = 0
-- AND gender > 0
AND gender >= 1
-- AND gender BETWEEN 0 AND 1
;

SELECT * FROM member
WHERE 1=1
AND nicKname IS NOT NULL
AND nicKname IS NULL
;










SELECT @@character_set_database, @@collation_database;

-- SET SESSION collation_database = utf8mb4_unicode_ci;

SHOW VARIABLES LIKE 'collation%';

ALTER TABLE `product_review` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

ALTER DATABASE dolphin CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
