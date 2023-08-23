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
	cid varchar(50) not null, -- 고객아이디
    daddr varchar(100) not null, -- 배송지
    custel varchar(100) not null, -- 고객 연락처
    pcom varchar(100), --배송회사
    ptel varchar(100), --배송기사 연락처
    pstate int default 0, -- 배송상태 (0:배송전 1:배송중 2:도착 3:구매결정)
    bcode varchar(100) --화물코드
	-- constraints  foreign key sno 
);


create table product (
    pno serial primary key, --상품번호
    cate varchar(100) not null, --카테고리
    prono varchar(100) not null, --카테고리번호+상품번호
    pname varchar(100) not null, --상품명
	pauthor varchar(50) not null, --저자
    pcomment varchar(100) not null, --상품설명
    plist varchar(100), --상품목차
    price int, --상품단가
	imgsrc1 varchar(256) default 'noimg.png',
	imgsrc2 varchar(256) default 'noimg.png',
	imgsrc3 varchar(256) default 'noimg.png',
    resdate timestamp default current_timestamp --등록일

	--출판사
);
-- truncate table product
--  insert into product values(default,'A','A1','초등 영어','천재교육','초등 영어 교재','1.test',11000,'sample01.png',default,default,default);
--  insert into product values(default,'A','A2','초등 수학','천재교육','초등 수학 교재','1.test',11000,'sample02.png',default,default,default);
--  insert into product values(default,'A','A3','초등 국어','천재교육','초등 국어 교재','1.test',11000,default,default,default,default);
-- select * from product;
-- drop table product;

create table category(
	cno varchar(10) primary key,
	cname varchar(20) not null
);
-- drop table category;

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
	cid varchar(100) not null,
	pno int not null,
	amount int not null

);
select * from cart


create table receive(
	rno serial primary key,
	pno int not null,
	amount int default 0,
	rprice int default 0,
	resdate timestamp default current_timestamp
);
-- drop table receive cascade;

create table serve(
	sno serial primary key,
	pno int not null, 
	amount int default 1,
	sprice int default 1000,
	resdate timestamp default current_timestamp
);


-- drop table serve

create view inventory as (select pno,amount from receive except select pno,amount from serve);

select * from inventory;






select * from custom
--update custom set pw='oFKk5lXg6iVgMTcBj+w8KeQTrgDqHnMcQ8j+kee5q7PpUDRAdluCzGJFizG6uiW1SHkRmA=='






