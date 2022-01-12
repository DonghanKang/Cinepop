-------------------------상품---------------------------

--DROP TABLE PRODUCTS;
--DROP TABLE PD_CATEGORY;

CREATE TABLE PD_CATEGORY
(
    PCT_NO varchar(20) primary key,
    PCT_NAME varchar(30)
);

CREATE TABLE PRODUCTS   
(
    PD_NO number primary key ,
    PCT_NO varchar2(20) 
        constraint FK_PCTNO references PD_CATEGORY(PCT_NO),
    PD_NAME varchar2(50) not null,
    PD_PRICE number not null,
    PD_IMAGENAME varchar2(50),
    PD_IMAGEFILESIZE number,
    PD_DESCRIPTION CLOB,
    PD_REGDATE date default sysdate
);

CREATE TABLE ORDER_HISTORY
(
    ORDER_NO number primary key,
    A_NO number 
        constraint FK_ANO references ACCOUNT(A_NO),
    PD_NO varchar2(20)
        constraint FK_PDNO references PRODUCTS(PD_NO),
    
);

DROP SEQUENCE PDNO_SEQ;
CREATE SEQUENCE PDNO_SEQ
START WITH 201
INCREMENT BY 1
NOCACHE;
-------------------------상품---------------------------
-------------------------구매---------------------------
drop table cart;
create table CART
(
    CART_NO number primary key,
    ID      varchar2(50)
        references ACCOUNT(ID) 
--        NOT NULL 
        ,
    PD_NO   number
        references PRODUCTS(PD_NO) NOT NULL,
    QUANTITY number
);

create table orders
(
      ORDER_NO		number	NOT NULL Primary Key,   --주문번호
      ID	varchar2(50) 
        references ACCOUNT(ID) NOT NULL ,		--고객고유번호(회원아이디)(FK)
      TOTAL_PRICE		number Null,			--주문총금액
      DELIVERY_STATUS	VarChar2(20) default '입금확인중',		--주문상황_배송상황(1:입금확인중, 2:결제완료, 3:배송중, (배송준비중) 4:배송완료)
      ORDER_DATE		Date default sysdate ,		--주문일자
      MESSAGE			varchar2(150),			--남기고싶은말
      -- pwd		VarChar2(20) Null		--주문비밀번호_비회원
    
      RECEIVER	    VarChar2(50) NULL,		--받는사람이름 (있으면 선물하기)
      HP			VarChar2(20) NULL	--휴대폰번호
);

create table orderDetails
(
    ORDER_NO    number 
        references ORDERS(ORDER_NO) NOT NULL, 
    PD_NO   number
        references PRODUCTS(PD_NO) NOT NULL,
    QUANTITY    number NOT NULL
);

create sequence cart_seq
start with 10001
increment by 1
nocache;

create sequence orders_seq
start with 100001
increment by 1
nocache;

--결제 뷰
create or replace view payment
as
select p.pd_name, pdc.pct_name, p.pd_price, c.quantity, p.pd_price*c.quantity as "SUM_PRICE"
from cart c join products p
on c.pd_no=p.pd_no
join PD_CATEGORY pdc
on p.pct_no=pdc.pct_no;

select * from account;
select * from payment;
select * from orders;
select * from orderDetails;
select * from cart;

alter table account add detail_address2 varchar2(20);
-------------------------구매---------------------------