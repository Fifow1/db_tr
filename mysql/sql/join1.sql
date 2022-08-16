use lasldjf;


-- 공통코드
select
	a.seq
    ,a.groupName
    ,b.seq
    ,b.codename
from group_a a
inner join code b on b.group_seq = a.seq
;


-- 로그인
select 1=1
	,a.id
    ,a.pw
    ,a.delYn
from member a
where id = "lasldjf" and pw = "la381"
and delYn = 1
;

-- main.keyboard 목록
select
	a.title
    ,a.price
    ,a.mainYn
from product a
where mainYn = 1
and delYn = 1
;

-- 



-- 리뷰
select
    a.id
    ,c.title
    ,b.content
from member a
inner join review b on b.seq = a.seq
inner join product c on c.seq = a.seq

;
-- 상품
select
	b.seq
    ,a.title
    ,a.price
    ,a.stock
    ,b.option
	,b.option_sub
from product a
inner join product_option b on b.product_seq = a.seq

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
inner join member_address b on b.member_seq = a.seq
;

-- 주문정보
select
	a.seq
    ,b.id
    ,e.title
    ,f.option
    ,f.option_sub
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
inner join product e on e.seq = a.seq
inner join product_option f on f.seq = a.seq
;












