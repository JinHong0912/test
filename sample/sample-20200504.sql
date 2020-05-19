sample-20200504.sql : 처음 작업
sample.dump :백업 mysqldump -uroot -p greenart > 20200504.dump


use sample;

create table users(
uid int not null auto_increment primary key,
userID varchar(20) not null,
passwd varchar(20) not null,
userName varchar(20) not null,
userPhone char(15) not null,
userEmail varchar(50),
userDomain varchar(50),
auth varchar(20) default '일반',
userRegdate datetime

); 

INSERT INTO users(userID, passwd, userName, userPhone, auth)
VALUES('admin', '1111', '관리자', '010-1234-1234' , '관리자'); 


##게시판 관리 테이블(Board(b-))
create table board(
bid int not null auto_increment primary key,
boardCode varchar(20) not null,
boardName varchar(50) not null,
boardMaker varchar(20),
boardColor varchar(20),
boardType varchar(20),
boardRegdate datetime
);

##게시판 저장되는 부분
##답변형 게시판
CREATE table gat_article_+boardCode+(
aid int not null auto_increment primary key,
subject varchar(300) not null,
writer varchar(20) not null,
content text,
regdate datetime,
hit int default 0,
fileName varchar(300),
fileOriName varchar(300),
fileUrl varchar(500),
ref int,
re_step int,
re_level int
);

## 답변형 게시판의 댓글
CREATE table gat_comment_+boardCode+(
cid int not null auto_increment primary key,
aid int not null,
comment text,
who varchar(20),
regdate datetime
);

