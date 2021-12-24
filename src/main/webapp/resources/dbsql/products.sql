DROP TABLE PD_CATEGORY;
CREATE TABLE PD_CATEGORY
(
    PCT_NO varchar(20) primary key,
    PCT_NAME varchar(30)
);

DROP TABLE PRODUCTS;
CREATE TABLE PRODUCTS
(
    PD_NO number primary key,
    PCT_NO varchar2(20) 
        constraint FK_PCTNO references PD_CATEGORY(PCT_NO),
    PD_NAME varchar2(20) not null,
    PD_PRICE number not null,
    PD_IMAGEURL varchar2(100),
    PD_IMAGENAME varchar2(30),
    PD_DESCRIPTION CLOB,
    PD_REGDATE date default sysdate
);

DROP SEQUENCE PDNO_SEQ;
CREATE SEQUENCE PDNO_SEQ
START WITH 101
INCREMENT BY 1
NOCACHE;

select pdno_seq.nextval from dual;
select * from pd_category;
select * from products;
