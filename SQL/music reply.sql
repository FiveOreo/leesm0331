CREATE TABLE MUSIC_COMMENT
(
  comment_id varchar2(30) not null,
  comment_content varchar2(2000) not null,
  comment_grub number not null,
  comment_lev number not null,
  comment_date date
);

create sequence COMMENT_SEQ
start with 1
  increment by 1
  maxvalue 10000;

drop table music_comment;

drop sequence comment_seq;