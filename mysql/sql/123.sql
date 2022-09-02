
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
WHERE delYn = 0
;

select count(CC.seq) from code CC where 1=1 and group_seq = 4;

    
    



