create table chartMusic(
CNUMBER number primary key,
TITLE   varchar2(100) not null,
SINGER  varchar2(100) not null,
SDATE   varchar2(100) not null,
ALBUM   varchar2(100) not null,
GENRE   varchar2(100)
);

drop table chartmusic;
create sequence chart_seq
start with 1
  increment by 1
  maxvalue 50;
  
drop sequence chart_seq;