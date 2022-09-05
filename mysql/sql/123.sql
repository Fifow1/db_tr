
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
INNER JOIN codeGroup CCG ON CCG.seq = CC.group_seq;


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

select count(CC.seq) from code CC where 1=1 and group_seq = 4;

    
    
select * from codeGroup order by regdate desc;


select * from codeGroup;




