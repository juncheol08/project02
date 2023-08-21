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


