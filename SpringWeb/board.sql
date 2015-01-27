create table board
(
   num number not null,  --글번호
   userid varchar2(50) null,  -- 사용자id
   title varchar2(50) not null,  --제목
   regdate date null,  --작성일자
   content varchar2(500) not null,   --내용
   count number null,  -- 조회수
   filename varchar2(20) null,  --파일명
   ref number null,  -- 참조글
   re_step number default 0,  
   re_level number default 0,
   primary key (num),
   foreign key(userid) references userinfo(userid)
)

select*from userinfo;

--시퀀스 설정
create sequence board_seq 
increment by 1
start with 1
maxvalue 10000;
select * from(SELECT a.*, rownum rnum from
(select*from board ORDER BY num DESC)a)where rnum>=1 and rnum<=5;
SELECT * FROM board ORDER BY num;
insert into board(num, userid, title, regdate, 
content, count, filename, ref, re_step, re_level)
values(
board_seq.nextval,'dugohr89','제목입니다',sysdate,'내용입니다',0,'이승철.jpg',1,1,1
)

select * from board;
delete from userinfo where userid like '%mail%';

delete from board where userid = 'aaa';

delete from userinfo where userid = 'aaa';

select * from userinfo;
insert into USERINFO values('b', '123', 'kim', 'apples@naver.com');


INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);
INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

INSERT INTO board(num, userid, title, regdate, content, count, filename, ref) 
VALUES(board_seq.nextval, 'dugohr89', 'testdate', sysdate,'testcontent', 0,null,board_seq.currval);

select * from userinfo;


