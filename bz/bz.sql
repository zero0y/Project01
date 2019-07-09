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
赛季全新上线","大吉大利,今晚吃鸡","163"),(null,"s7
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

#创建保存武器数据的表
CREATE TABLE bz_list(
  did SMALLINT PRIMARY KEY AUTO_INCREMENT,
  dname VARCHAR(8) UNIQUE
);
INSERT INTO bz_list VALUES(10,"突击步枪");
INSERT INTO bz_list VALUES(20,"狙击枪");
INSERT INTO bz_list VALUES(30,"霞弹枪");
INSERT INTO bz_list VALUES(40,"冲锋枪");
INSERT INTO bz_list VALUES(50,"副武器");
INSERT INTO bz_list VALUES(60,"荒野求生");
INSERT INTO bz_list VALUES(70,"和平精英");
INSERT INTO bz_list VALUES(80,"绝地求生大逃杀");


#创建保存突击步枪表
CREATE TABLE bz_weapon(
uid INT PRIMARY KEY AUTO_INCREMENT,
pic VARCHAR(128),
url VARCHAR(128),
title VARCHAR(32),
subtitle VARCHAR(128),
details VARCHAR(128),
bz_listId SMALLINT
);
#插入数据10 系列
INSERT INTO bz_weapon VALUES("NULL","images\tujibuqiang\gun_ak-47.png","a1.html","AK-47","威力大、后座强，适用各种距离的作战；使用7.62毫米步枪子弹。","7.62毫米步枪子弹",10);
INSERT INTO bz_weapon VALUES("NULL","images\tujibuqiang\gun_s-acr.png","a2.html","S-ACR","精度高，中远距离点射、近距突袭；使用5.56毫米步枪子弹。","5.56毫米步枪子弹",10);
INSERT INTO bz_weapon VALUES("NULL","images\tujibuqiang\gun_m4a1.png","a3.html","M4A1","后座力低，擅长中远距离点射；使用5.56毫米步枪子弹。","5.56毫米步枪子弹",10);
INSERT INTO bz_weapon VALUES("NULL","images\tujibuqiang\gun_95.png","a4.html","95式","先进步枪，精度高，威力大，擅长中远距离射击；5.56毫米步枪子弹","5.56毫米步枪子弹",10);
INSERT INTO bz_weapon VALUES("NULL","images\tujibuqiang\gun_m27.png","a5.html","M27步枪","制式装备，导轨支持挂接多种配件；使用5.56毫米步枪子弹。","5.56毫米步枪子弹",10);
INSERT INTO bz_weapon VALUES("NULL","images\tujibuqiang\gun_aug.png","a6.html","AUG步枪","配备2倍光学瞄准镜，弹鼓可容纳42发子弹，开镜后坐力低，擅长连射。使用5.56毫米步枪子弹。","5.56毫米步枪子弹",10);
#插入数据20 系列
INSERT INTO bz_weapon VALUES("NULL","images\jujiqiang\gun_m24.png","b1.html","M24","精准稳定，远距离对敌人造成巨大威胁；使用狙击枪专用子弹。","狙击枪专用子弹",20);
INSERT INTO bz_weapon VALUES("NULL","images\jujiqiang\gun_88.png","b2.html","88式","国产连续狙击步枪，双模式自由切换；使用狙击枪专用子弹。","狙击枪专用子弹",20);
INSERT INTO bz_weapon VALUES("NULL","images\jujiqiang\gun_awm.png","b3.html","AWM","威力巨大，远距离一锤定音；使用狙击枪专用子弹","狙击枪专用子弹",20);
INSERT INTO bz_weapon VALUES("NULL","images\jujiqiang\gun_maose.png","b4.html","毛瑟狙击枪","经典老枪，远距离精确瞄准后有奇效；使用狙击枪专用子弹。","狙击枪专用子弹",20);
INSERT INTO bz_weapon VALUES("NULL","images\jujiqiang\gun_svd.png","b5.html","SVD","高精度连续狙击步枪，用于长距离击杀目标；使用狙击枪专用子弹。","狙击枪专用子弹",20);
INSERT INTO bz_weapon VALUES("NULL","images\jujiqiang\gun_val.png","b6.html","Val","用于长距离连续击杀的狙击步枪；自带瞄准镜与消音器；使用狙击枪专用子弹。","狙击枪专用子弹",20);
#插入数据30 系列
INSERT INTO bz_weapon VALUES("NULL","images\xiadanqiang\gun_m860.png","c1.html","M860","近战威力极大，但很难命中远处目标；使用12号口径霰弹。","12号口径霰弹",30);
INSERT INTO bz_weapon VALUES("NULL","images\xiadanqiang\gun_m88c.png","c2.html","M88C","威力巨大，装载量较少的现代化霰弹枪，可配备红点瞄具。","12号口径霰弹",30);
INSERT INTO bz_weapon VALUES("NULL","images\xiadanqiang\gun_sk12.png","c3.html","SK12","可连续发射多发霰弹，但很难打中远处目标；使用12号口径霰弹。","12号口径霰弹",30);
#插入数据40 系列
INSERT INTO bz_weapon VALUES("NULL","images\chongfengqiang\gun_mk5.png","d1.html","MK5","超高射速，装备配件更精准，但攻击远处目标较乏力；使用9毫米子弹。","9毫米子弹",40);
INSERT INTO bz_weapon VALUES("NULL","images\chongfengqiang\gun_mk60.png","d2.html","MK60","近距离强火力压制；使用9毫米子弹。","9毫米子弹",40);
INSERT INTO bz_weapon VALUES("NULL","images\chongfengqiang\gun_mp5.png","d3.html","MP5","后坐力低，射击精度高，但攻击远处目标较乏力；使用9毫米子弹。","9毫米子弹",40);
INSERT INTO bz_weapon VALUES("NULL","images\chongfengqiang\gun_uzi.png","d4.html","UZI","超高射速，精度较差，适用于近身战斗。","9毫米子弹",40);
#插入数据50 系列
INSERT INTO bz_weapon VALUES("NULL","images\fuwuqi\gun_banzhuan.png","e1.html","板砖","近距离最有威慑力，伤害极大！","NULL",50);
INSERT INTO bz_weapon VALUES("NULL","images\fuwuqi\gun_gongbingchan.png","e2.html","工兵铲","挥舞起来，谁敢靠近？","NULL",50);
INSERT INTO bz_weapon VALUES("NULL","images\fuwuqi\gun_popianshouliudan.png","e3.html","破片手榴弹","破片手榴弹，爆炸后会对周围人员造成大量伤害。","NULL",50);
INSERT INTO bz_weapon VALUES("NULL","images\fuwuqi\gun_shanguangdan.png","e4.html","闪光弹","投掷后，会在数秒内产生刺眼强光，使人员暂时失明。","NULL",50);
INSERT INTO bz_weapon VALUES("NULL","images\fuwuqi\gun_shizinu.png","e5.html","十字弩","静音冷兵器，头部命中一击制胜，十分危险。","NULL",50);
INSERT INTO bz_weapon VALUES("NULL","images\fuwuqi\gun_yanwudan.png","e6.html","烟雾弹","投掷后，会生成大量烟雾并持续一段时间，阻挡视线。","NULL",50);
#创建保存公告
CREATE TABLE Game_Notice(
Notid INT PRIMARY KEY AUTO_INCREMENT,
Nottitle VARCHAR(32),
NotContent VARCHAR(128),
Nottime DATE,
Gameid SMALLINT
);
#网易荒野求生公告
INSERT INTO Game_Notice VALUES("NULL","07-05 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","休闲玩法玩不够?还在期待新地图？","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","07-02 《荒野行动》夏日祈愿活动正式开启，惊喜好礼等你解锁！","七月夏日酷热来袭，想要开启暑期生活，创造美好回忆？《荒野行动》邀你一起来许下夏日心愿！","20170702",60);
INSERT INTO Game_Notice VALUES("NULL","07-01 《荒野行动》城市挑战赛深圳IBCMALL购物中心站","2019/7/21 13:00-2019/7/21 18:00-深圳市罗湖区布心路3008号","20170701",60);
INSERT INTO Game_Notice VALUES("NULL","06-28 《荒野行动》飓风已至玩法升级 《荒野行动》更新优化全解读","休闲玩法丰富精彩，更新优化持续发力。《荒野行动》本次更新后为玩家们带来了全面升级的休闲玩法与众多优化，助力玩家们获得更真实流畅的游戏体验。","20170628",60);
INSERT INTO Game_Notice VALUES("NULL","06-27 《荒野行动》飓风狙击来袭，玩法全面升级！","飓风狙击玩法升级，全面优化带来更好游戏体验。6月27日更新后，玩家们将能体验到全面升级的飓风狙击玩法系统！","20170627",60);
INSERT INTO Game_Notice VALUES("NULL","06-26 《荒野行动》6月27日移动端更新公告","亲爱的荒野精英们：欢迎来到《荒野行动》，一个畅快的射击竞技游戏。我们计划在北京时间6月27日早晨8点~10点更新游戏版本。","20170626",60);
INSERT INTO Game_Notice VALUES("NULL","06-25 《荒野行动》千元奖金加持！荒野行动贴吧易战水友赛系列活动火热开启","你是否苦于一身神技无处施展？你是否想和千万荒野精英同场竞技","20170625",60);
INSERT INTO Game_Notice VALUES("NULL","06-24 《荒野行动》6月25日PC端更新公告","亲爱的荒野精英们：欢迎来到《荒野行动》，一个畅快的射击竞技游戏。我们计划在北京时间6月25日早晨8点~10点更新游戏版本。","20170624",60);
INSERT INTO Game_Notice VALUES("NULL","06-23 《荒野行动》火拼街区首曝 街区战境开战在即","亲爱的荒野精英们","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-22 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-21 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-20 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-19 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-18 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-17 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-16 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-15 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
INSERT INTO Game_Notice VALUES("NULL","06-14 《荒野行动》新玩法火拼街区首曝 街区战境开战在即","欢迎来到《荒野行动》","20170705",60);
#和平精英
INSERT INTO Game_Notice VALUES("NULL","《和平精英》7月平台活动概率公示","手Q平台活动,活动时间：7月4日-7月10日","20170705",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》7月1日外挂打击公告","外挂打击公告","20170701",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月28日外挂打击公告","外挂打击公告","20170628",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》7月1日外挂打击公告","外挂打击公告","20170627",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月28日外挂打击公告","外挂打击公告","20170626",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月25日平台活动概率公示","手Q平台活动","20170625",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月24日平台活动概率公示","手Q平台活动","20170624",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月23日平台活动概率公示","手Q平台活动","20170623",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月22日平台活动概率公示","手Q平台活动","20170622",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月21日平台活动概率公示","手Q平台活动","20170621",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月20日平台活动概率公示","手Q平台活动","20170620",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月19日平台活动概率公示","手Q平台活动","20170619",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月18日平台活动概率公示","手Q平台活动","20170618",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月17日平台活动概率公示","手Q平台活动","20170617",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月16日平台活动概率公示","手Q平台活动","20170616",70);
INSERT INTO Game_Notice VALUES("NULL","《和平精英》6月15日平台活动概率公示","手Q平台活动","20170615",70);
#绝地求生大逃杀
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，平阳警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170705",80);
INSERT INTO Game_Notice VALUES("NULL","老兵登机绑定恢复公告","感恩有你 国服内测预约超500万","20170702",80);
INSERT INTO Game_Notice VALUES("NULL","老兵登机绑定恢复公告","感恩有你 国服内测预约超500万","20170701",80);
INSERT INTO Game_Notice VALUES("NULL","五大反外挂计划，对外挂进行多维度“攻防”","感恩有你 国服内测预约超500万","20170629",80);
INSERT INTO Game_Notice VALUES("NULL","老兵登机绑定恢复公告","感恩有你 国服内测预约超500万","20170628",80);
INSERT INTO Game_Notice VALUES("NULL","老兵登机绑定恢复公告","感恩有你 国服内测预约超500万","20170627",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170626",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170625",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170624",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170623",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170622",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170621",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警放斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170620",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170618",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170617",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170616",80);
INSERT INTO Game_Notice VALUES("NULL","腾讯联手警方重拳出击，警方斩断特大外挂黑色产业链","感恩有你 国服内测预约超500万","20170615",80);



