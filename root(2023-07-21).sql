-- root(2023-07-21) 도서대여서비스 Test
create database bookrentDB;
use bookrentDb;

-- 도서정보 table
create table tbl_books (
	B_CODE		VARCHAR(6)		NOT NULL	PRIMARY KEY,
	B_NAME		VARCHAR(125)	NOT NULL,	
	B_AUTHER	VARCHAR(10)		NOT NULL,	
	B_COMP		VARCHAR(10),		
	B_YEAR		int				NOT NULL,	
	B_IPRICE	int,		
	B_RPRICE	int				NOT NULL	
);

insert into tbl_books(
b_code, b_name, b_auther, b_comp, b_year, b_iprice, b_rprice) values (
'A00001', '루루는귀여워', '강유은', '한국인재경영원', '2023', '20000', '22000');

select * from tbl_books;

-- 회원정보 table
create table tbl_users(
	U_CODE	VARCHAR(6)		NOT NULL	PRIMARY KEY,
	U_NAME	VARCHAR(10)		NOT NULL,	
	U_TEL	VARCHAR(15),		
	U_ADDR	VARCHAR(125)		
);

-- 대여정보 table 
create table tbl_rent_book (
	RENT_SEQ			BIGINT		NOT NULL	PRIMARY KEY  auto_increment,
	RENT_DATE			VARCHAR(10)	NOT NULL,	
	RENT_RETURN_DATE	VARCHAR(10)	NOT NULL,	
	RENT_BCODE			VARCHAR(6)	NOT NULL,	
	RENT_UCODE			VARCHAR(6)	NOT NULL,	
	RENT_RETURN_YN		VARCHAR(1),		
	RENT_POINT			INT		
);

-- 참조무결성 관계성립 검증하기 
select RENT_SEQ,
RENT_DATE,
RENT_RETURN_DATE,
RENT_BCODE,
RENT_UCODE,
RENT_RETURN_YN,
RENT_POINT from tbl_rent_book left join tbl_books
on rent_bcode = b_code
where rent_date is null order by rent_seq;

select RENT_SEQ,
RENT_DATE,
RENT_RETURN_DATE,
RENT_BCODE,
RENT_UCODE,
RENT_RETURN_YN,
RENT_POINT from tbl_rent_book left join tbl_users
on rent_ucode = u_code
where rent_date is null order by rent_seq;

-- 참조무결성 관계 설정하기 
alter table tbl_rent_book
add constraint FK_BOOKS
foreign key (rent_bCODE)
references tbl_books(b_code);

alter table tbl_rent_book
add constraint FK_USERS
foreign key (rent_uCODE)
references tbl_users(u_code);










