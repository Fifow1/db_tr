
SELECT * FROM code;

SELECT * FROM codeGroup;

SELECT * FROM member;

SELECT * FROM product;


-- ________________코드 관리 테이블 _______________
SELECT 
	CC.seq AS CCseq
    ,CCG.seq AS CCGseq
	,CCG.groupName AS CCGname
	,CCG.groupName_en AS CCGname_en
    ,CC.seq AS CCseq
    ,CC.codename AS CCname
    ,CC.regdate AS CCregdate
    ,CC.delYn AS CCdelYn
FROM code CC
left JOIN codeGroup CCG ON CCG.seq = CC.group_seq
-- where 1=1
-- limit 2 offset 0

;

-- ________________코드 개수 코드그룹테이블에 표시하기 _______________
SELECT
	CCG.seq
    ,CCG.groupName
    ,CCG.groupName_en
    ,(select count(CC.seq) from code CC where 1=1 and group_seq = CCG.seq) as CCcount
    ,CCG.regdate
FROM  codeGroup CCG
WHERE delYn = 1
;

-- ________________코드 개수 코드그룹테이블에 표시하기 (날짜검색) _______________
SELECT
	CCG.seq
	,CCG.groupName
	,CCG.groupName_en
	,(select count(CC.seq) from code CC where 1=1 and group_seq = CCG.seq) as CCcount
	,CCG.regdate
	FROM  codeGroup CCG
WHERE 1=1 
AND CCG.regdate between '2022-05-20' and '2022-06-30'
;


-- ________________ 페이징 구현(limit) 쿼리문_______________
select 
      *
  from codeGroup
  where 1=1
  AND seq > 0
  order by seq asc
  limit 20, 10 
  ;
select * from codeGroup;


-- ________________ 자동 seq 초기화및 재정렬 _______________
SET @CNT = 0; 
UPDATE codeGroup SET codeGroup.seq = @CNT:= @CNT + 1;
ALTER TABLE codeGroup AUTO_INCREMENT = 28;



SELECT
	CCG.seq
	,CCG.groupName_code
	,CCG.groupName
	,CCG.groupName_en
	,(select count(CC.seq) from code CC where 1=1 and group_seq = CCG.seq) as CCcount
	,CCG.regdate
FROM  codeGroup CCG
WHERE 1=1
ORDER BY CCG.seq ASC

LIMIT 10 offset 20
;
-- 아이디 찾기 --
-- 비밀번호 찾기 --

select
    a.*,
    group_concat(b.file_idx, b.file_name SEPARATOR '|')    
from(
    select
        *
    from board
    limit 0, 10 #paging처리
) a
left outer join file_info b
on a.idx = b.board_idx
group by a.idx;



SELECT 
	a.*
    ,group_concat(pro .optionSub separator ',') AS 'optionSub'
from(
	select
    *
    from product pr
	order by pr.seq DESC 
    ) a
LEFT JOIN productOption pro 
ON a.seq = pro.product_seq
WHERE 1=1 
AND category = 35
group by product_seq
;
        SELECT 
			pr.seq
            ,(select DISTINCT category ) as category
            ,pr.title
            ,pr.star
            ,pr.price
            ,pr.stock
            ,pr.uploadDate
		    ,group_concat(pro .optionSub separator ',') AS 'optionSub'
		from(
			select
		    pr.seq
            ,pr.category
            ,pr.title
            ,pr.star
            ,pr.price
            ,pr.stock
            ,pr.uploadDate
		    from product pr
			order by pr.seq DESC 
		    ) pr
		LEFT JOIN productOption pro 
		ON pr.seq = pro.product_seq
		WHERE 1=1 
		group by product_seq
		;

SELECT 
			pr.seq
            ,(select DISTINCT category ) as category
            ,pr.title
            ,pr.star
            ,pr.price
            ,pr.stock
            ,pr.uploadDate
            ,pro.Option
		    ,pro.optionSub
		from product pr
		LEFT JOIN productOption pro 
		ON pr.seq = pro.product_seq
        where pr.seq = 1;
		;
        
	
-- index
SHOW index FROM member;
CREATE INDEX abc ON member(delYn,id);
ALTER TABLE member DROP INDEX abc;



DELIMITER $$
CREATE FUNCTION lasldjf.member (
seq bigint
) 
RETURNS varchar(100)
BEGIN
    declare rtName varchar(100);
	select
		id into rtName
	from
		member
	where 1=1
		and seq = seq
	;
	RETURN rtName;
END$$
DELIMITER ;

SET GLOBAL log_bin_trust_function_creators = 1
;
