create table mmember(
    MEMBERID varchar2(30) not null primary key,
    MEMBERPW varchar2(10) not null,
    EMAIL varchar2(30),
    MEMBERNAME char(30) not null,
    gender varchar2(3),
    regdate  date
);

create sequence mmember_seq
  start with 1
  increment by 1
  maxvalue 10000;
  
drop table mmember;
