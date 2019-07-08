SET NAMES UTF8;
DROP DATABASE IF EXISTS bz;
CREATE DATABASE bz CHARSET=UTF8;
USE bz;

CREATE TABLE bz_admin(   #管理员信息表
  aid  INT PRIMARY KEY AUTO_INCREMENT,
  aname VARCHAR(32),
  azhanghao  VARCHAR(32),
  apwd  VARCHAR(32)
);

INSERT INTO bz_admin VALUES(null,"小明一号","xiaoming01",741852963),(null,"小明二号","xiaoming02",963852741);

select* from bz_admin;

USE bz;

create table game_active(    #游戏赛事表
  actid  INT PRIMARY KEY AUTO_INCREMENT,
  acttitle  VARCHAR(250),
  actcontent  text(2000),
  gameid  varchar(50)
);
INSERT INTO game_active VALUES(null,"s6
赛季全新上线","大吉大利,今晚吃鸡","163");

select * from game_active;

#游戏攻略表
create  table game_strategy(
    stid  INT PRIMARY KEY AUTO_INCREMENT,
    gameid  VARCHAR(50),
    atsort   varchar(50),
    sttitle  varchar(250),
    stcontent text(2000),
    sttime   date
);
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你体验', '呃呃费of和沃尔复热耦合', '2019-07-08');

#帖子表
CREATE TABLE Posting(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname   VARCHAR(50),#用户名
    sort    VARCHAR(15),#分类
    title   VARCHAR(50),#标题
    content TEXT(2000),#内容
    video   VARCHAR(255),#视频
    img     VARCHAR(255)#图片
);
INSERT INTO Posting VALUES(1,"laowang","qiangzi","kiis"
,"James Watson, Philip Mayo and I gave a slide and video presentation","http://127.0.0.1/video/hhhi.mp4","http://127.0.0.1/img/kiss.jpg"),(null,"laowang","qiangzi","kiis"
,"James Watson, Philip Mayo and I gave a slide and video presentation","http://127.0.0.1/video/hhhi.mp4","http://127.0.0.1/img/kiss.jpg"),(null,"laowang","qiangzi","kiis"
,"James Watson, Philip Mayo and I gave a slide and video presentation","http://127.0.0.1/video/hhhi.mp4","http://127.0.0.1/img/kiss.jpg");
USE bz;

#回帖表
CREATE TABLE Reply(
    id INT  PRIMARY KEY AUTO_INCREMENT,
    uname   VARCHAR(50),
    content VARCHAR(255),
    img     VARCHAR(255),
    RDate   DATE
);
INSERT INTO Reply VALUES(1,"qiangzi","nitaishuile",'6666.jpg',19991221),(null,"qiangzi","nitaishuile",'6666.jpg',19991221),(null,"qiangzi","nitaishuile",'6666.jpg',19991221);





