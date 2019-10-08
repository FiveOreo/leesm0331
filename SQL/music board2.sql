CREATE TABLE MUSIC_Board2
(
  num number(5) primary key,
  name varchar2(30),
  pass varchar2(30),
  title varchar2(100),
  memo varchar2(2000),
  time date default sysdate,
  hit number(10),
  ref number(10),
  indent number(10),
  step number(10),
  filename varchar2(300)  
);

create sequence MUSICBOARD2_SEQ
start with 1
  increment by 1
  maxvalue 10000;

drop table music_board2;

drop sequence musicboard2_seq;