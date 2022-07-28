
-- lasldjf datebase를 사용한다
USE lasldjf;

-- 전체 컬럼 조회(실제 웹개발에서 사용 x)
SELECT * from member;

-- 컬럼 추가 (not null)
ALTER TABLE member_copy ADD COLUMN nickname varchar(45);

ALTER TABLE member_copy ADD COLUMN nameEng varchar(45) AFTER id;

-- 컬럼변경
ALTER TABLE member_copy MODIFY COLUMN nickname varchar(100);

-- 컬럽 이름 변경
ALTER TABLE member_copy CHANGE COLUMN nickname nick varchar(45);

-- 컬럼 삭제
ALTER TABLE member_copy drop COLUMN nick;

-- row 삭제
DELETE FROM member_copy where seq = 2;

-- comit / rollback

select*from member_copy;

-- 데이터 수정
UPDATE member_copy SET
name="Tony"
, nameEng="Great"
where seq =1;