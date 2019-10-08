CREATE TABLE MUSIC_Board 
(
  board_num number(5) primary key,
  board_pass varchar2(30),
  board_name varchar2(30),
  board_email varchar2(30),
  board_title varchar2(100),
  board_content varchar2(2000),
  readcount number(5) default 0,
  writedate date default sysdate
);


create sequence MUSICBOARD_SEQ
start with 1
  increment by 1
  maxvalue 10000;

drop table music_board;

drop sequence musicboard_seq;