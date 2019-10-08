create table musicboard
(
  NUM NUMBER ,
  USERNAME VARCHAR2(100),
  TITLE VARCHAR2(100),
  MEMO VARCHAR2(100),
  TIME DATE,
  HIT NUMBER,
  REF NUMBER,
  INDENT NUMBER,
  STEP NUMBER,
  buser_fk varchar2(30),
  CONSTRAINT PK_NUM PRIMARY KEY(NUM),
  constraint FK_USER foreign key (buser_fk) references MMEMBER(MEMBERID)
);

create sequence MBOARD_SEQ
start with 1
  increment by 1
  maxvalue 10000;
  
  drop table musicboard;
  
  drop sequence MBOARD_SEQ;