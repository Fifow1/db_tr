use lasldjf;

select *from member_address;


select
	b.group_seq
    ,a.groupName
    ,b.seq
    ,b.codename
from group_a a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join code b on b.group_seq = a.seq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;

-- login




select
	a.seq
    ,a.title
    ,a.price
    ,a.stock
    ,b.option
from product a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join product_option b on b.product_seq = a.seq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;







select * from lasldjf.member where id = "lasldjf" 
;


-- 무슨 목록

-- 코멘트 목록

-- 극장 목록







