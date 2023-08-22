alter table custom add addr varchar(200);

alter table custom alter column tel type varchar(13);
alter table custom alter column pw type varchar(500);
alter table custom alter column birth type varchar(20);

select * from custom;

create table filetest(
	uname varchar(200),
	subject varchar(300),
	content varchar(1000),
	filename varchar(500)
);

create table filetest2(
	uname varchar(200),
	subject varchar(300),
	content varchar(1000),
	filename1 varchar(500),
	filename2 varchar(500),
	filename3 varchar(500)
);

select * from filetest2






--0822


create table delivery (
	dno serial primary key, --배송코드
	sno int not null, --결제번호
	cid varchar(50), -- 고객아이디
    daddr varchar(100), -- 배송지
    custel varchar(100), -- 고객 연락처
    pcom varchar(100), --배송회사
    ptel varchar(100), --배송기사 연락처
    pstate int default 0, -- 배송상태 (0:배송전 1:배송중 2:도착 3:구매결정)
    bcode varchar(100) --화물코드
	-- constraints  foreign key sno 
);


create table product (
    no serial primary key, --상품번호
    cate varchar(100), --카테고리
    prono varchar(100), --카테고리번호+상품번호
    pname varchar(100), --상품명
    pcomment varchar(100), --상품설명
    plist varchar(100), --상품목차
    price int, --상품단가
	imgsrc1 varchar(256) default 'noimg.jpg',
	imgsrc2 varchar(256) default 'noimg.jpg',
	imgsrc3 varchar(256) default 'noimg.jpg',
    resdate timestamp default current_timestamp --등록일
);

insert into product values(default,'A','A1','초등 영어','초등 영어 교재','1.test',11000,'{path }/img/test1.jpg',default,default,default);

create table category(
	cno varchar(10),
	cname varchar(20)
);

create table payment(
	sno serial primary key,
	cid varchar(50),
	pno int,
	amount int,
	pmethod varchar(100),
	pcom varchar(100),
	cnum varchar(100),
	payprice int,
	dno varchar(100)
);



create table cart(
	cartno int primary key,
	cid varchar(100),
	pno int,
	amount int

);
select * from cart


create table receive(
rno serial,
pno int,
amount int,
rprice int,
resdate int
);


create table serve (
rno serial,
pno int,
amount int,
rprice int,
resdate int

);

-- drop table serve

create view inventory as (select pno,amount from receive except select pno,amount from serve);

select * from inventory;







