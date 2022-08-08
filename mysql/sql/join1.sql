use lasldjf;

select
	a.seq
    ,a.groupName
    ,b.seq
    ,b.codename
from group_a a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join code b on b.group_seq = a.seq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;

-- 상품정보
select
	b.seq
    ,a.title
    ,a.price
    ,a.stock
    ,b.option
	,b.option_sub
from product a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join product_option b on b.product_seq = a.seq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq

;

-- 회원정보
select
	a.id
    ,a.pw
    ,a.gender
    ,a.dob
    ,b.address_zipcode
    ,b.address_zip
    ,b.address_detail
	,a.email
    ,a.number_phone
    ,a.Regdate
    ,b.useYn
from member a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join member_address b on b.member_seq = a.seq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;

-- 주문정보
select
	a.seq
    ,b.id
    ,e.title
    ,e.price
    ,b.number_phone
    ,c.address_zipcode
    ,c.address_zip
    ,c.address_detail
    ,d.payment_way
from lasldjf.order a
inner join member b on b.seq = a.seq
inner join member_address c on c.seq = a.seq
inner join payment d on d.seq = a.seq
inner join product_option e on e.seq = a.seq
;





-- 무슨 목록

-- 코멘트 목록

-- 극장 목록







