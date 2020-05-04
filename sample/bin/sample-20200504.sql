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

