-------------------------��ǰ---------------------------

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
-------------------------��ǰ---------------------------
-------------------------����---------------------------
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
      ORDER_NO		number	NOT NULL Primary Key,   --�ֹ���ȣ
      ID	varchar2(50) 
        references ACCOUNT(ID) NOT NULL ,		--��������ȣ(ȸ�����̵�)(FK)
      TOTAL_PRICE		number not null,			--�ֹ��ѱݾ�
      DISC_PRICE         number null,           --���αݾ�
      DELIVERY_STATUS	VarChar2(20) default '�����Ϸ�',		--�ֹ���Ȳ_��ۻ�Ȳ(1:�Ա�Ȯ����, 2:�����Ϸ�, 3:�����, (����غ���) 4:��ۿϷ�)
      ORDER_DATE		Date default sysdate ,		--�ֹ�����
      MESSAGE			varchar2(150),			--����������
      -- pwd		VarChar2(20) Null		--�ֹ���й�ȣ_��ȸ��
    
      RECEIVER	    VarChar2(50) NULL,		--�޴»���̸� (������ �����ϱ�)
      HP			VarChar2(20) NULL	--�޴�����ȣ
);

create table orderDetails
(
    ORDER_NO    number 
        references ORDERS(ORDER_NO) NOT NULL, 
    PD_NO   number
        references PRODUCTS(PD_NO) NOT NULL,
    QUANTITY    number NOT NULL,
    PD_ORDER    number NOT NULL,
    REVIEW_FLAG varchar2(1) default 'N'
);
create table PD_REVIEW
(
    ORDER_NO NUMBER 
        references ORDERS(ORDER_NO) NOT NULL, 
    PD_NO NUMBER
        references PRODUCTS(PD_NO) NOT NULL,
    REVIEW CLOB,
    REGDATE DATE DEFAULT SYSDATE
);

create sequence cart_seq
start with 10001
increment by 1
nocache;

create sequence orders_seq
start with 100001
increment by 1
nocache;

--����â ��
create or replace view payment
as
select p.pd_name, pdc.pct_name, p.pd_price, c.quantity, p.pd_price*c.quantity as "SUM_PRICE"
from cart c join products p
on c.pd_no=p.pd_no
join PD_CATEGORY pdc
on p.pct_no=pdc.pct_no;

--�������� ��
create or replace view orderDetails_view
as
select od.order_no,p.pd_no,p.pd_name,pd_price,od.quantity, p.PD_IMAGENAME, od.pd_order, od.review_flag
from orderDetails od join products p
on od.pd_no=p.pd_no
;
select * from orderdetails_view;

select * from products;
select * from account;
select * from payment;
select * from orders; 
select * from orderDetails;
select * from cart;
select * from pd_category;


create view pd_review_view
as
select pr.*, a.id
from pd_review pr join orders o
on pr.order_no=o.order_no
join account a
on o.id=a.id;
select * from pd_review_view;

alter table account add detail_address2 varchar2(20);
-------------------------����---------------------------