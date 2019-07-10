SET NAMES UTF8;
DROP DATABASE IF EXISTS bz;
CREATE DATABASE bz CHARSET=UTF8;
USE bz;

 #管理员信息表
CREATE TABLE bz_admin(  
  aid  INT PRIMARY KEY AUTO_INCREMENT,  #管理员id
  aname VARCHAR(32),       #管理员姓名
  azhanghao  VARCHAR(32),    #管理员账号
  apwd  VARCHAR(32)  #管理员密码
);
INSERT INTO bz_admin VALUES(null,"小明一号","xiaoming01",741852963),(null,"小明二号","xiaoming02",963852741);

/**用户信息**/
CREATE TABLE bz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);


/**用户信息**/
INSERT INTO bz_user VALUES
(NULL, 'laoyao', '123456', 'yao@qq.com', '13501234567', 'img/avatar/default.png', '老瑶', '0'),
(NULL, 'qiangzi', '123456', 'qiang@qq.com', '13501234568', 'img/avatar/default.png', '强子', '1'),
(NULL, 'laowang', '123456', 'wang@qq.com', '13501234569', 'img/avatar/default.png', '老王', '0'),
(NULL, 'laohuang', '123456', 'huang@qq.com', '13501234560', 'img/avatar/default.png', '老黄', '1');



#游戏赛事表
create table game_active(    
  actid  INT PRIMARY KEY AUTO_INCREMENT,  #游戏赛事编号
  acttitle  VARCHAR(250),   #游戏赛事标题
  actcontent  text(2000),    #游戏赛事内容
  gameid  varchar(50)        #所属游戏编号
);#163 荒野求生   155 和平精英  160 绝地求生大逃杀
INSERT INTO game_active VALUES(null,"s7赛季全新上线","热情难挡，荒野嗨翻石家庄","163");
INSERT INTO game_active VALUES (null,"s6赛季全新上线","《荒野行动》沈阳方特荒野行动嘉年华，百人精英巅峰对决，万元赏金全民狂欢，冠军荣耀绽放！","163"); 
INSERT INTO game_active VALUES(null,"s6赛季全新上线","挑战赛新入四城，荒野助力马拉松正能量","163"); 
INSERT INTO game_active VALUES(null,"s6赛季全新上线","粽子与子弹齐飞，荒野挑战赛引爆夏天","163"); 
INSERT INTO game_active VALUES (null,"s6赛季全新上线","6月28日城市挑战赛石家庄解放广场会展中心站","163"); 
INSERT INTO game_active VALUES (null,"s6赛季全新上线","6月23日城市挑战赛长沙凯德壹中心站","163"); 
INSERT INTO game_active VALUES (null,"s6赛季全新上线","6月23日城市挑战赛济南荣盛时代广场站","163"); 
INSERT INTO game_active VALUES (null,"s5赛季全新上线","6月23日城市挑战赛沈阳方特欢乐世界站","163"); 
INSERT INTO game_active VALUES (null,"s5赛季全新上线","4月7日成都城市挑战赛","163"); 
INSERT INTO game_active VALUES (null,"s5赛季全新上线","4月7日北京城市挑战赛","163"); 
INSERT INTO game_active VALUES (null,"s5赛季全新上线","4月6日济宁城市挑战赛","163"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","沈阳方特荒野行动嘉年华，百人精英巅峰对决，万元赏金全民狂欢，冠军荣耀绽放！","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","挑战赛新入四城，荒野助力马拉松正能量","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","粽子与子弹齐飞，荒野挑战赛引爆夏天","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","6月28日城市挑战赛石家庄解放广场会展中心站","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","6月23日城市挑战赛长沙凯德壹中心站","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","6月23日城市挑战赛济南荣盛时代广场站","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","6月23日城市挑战赛沈阳方特欢乐世界站","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","4月8日成都城市挑战赛","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","4月7日北京城市挑战赛","155"); 
INSERT INTO game_active VALUES (null,"和平精英全新上线","4月6日济宁城市挑战赛","155"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","国内最会用AK的选手，队友全倒，他竟一人灭了职业队吃鸡","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","最极限的预判狙，对着敌人前方5米处开枪，居然把他爆头了","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","6月28日济宁城市挑战赛","160");
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","6月25日成都城市挑战赛","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","6月22日北京城市挑战赛","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","6月20日济宁城市挑战赛","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","6月15日成都城市挑战赛","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","6月10日北京城市挑战赛","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","6月6日济宁城市挑战赛","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","6月3日成都城市挑战赛","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","5月30日北京城市挑战赛","160"); 
INSERT INTO game_active VALUES (null,"绝地求生大逃杀全新上线","5月25日济宁城市挑战赛","160"); 


#游戏攻略表
create  table game_strategy(
    stid  INT PRIMARY KEY AUTO_INCREMENT,   #攻略编号
    gameid  VARCHAR(50),             #所属游戏编号
    atsort   varchar(50),     #所属分类
    sttitle  varchar(250),    #攻略标题
    stcontent text(2000),     #攻略内容
    sttime   date             #攻略发布日期
);

INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你体验', '呃呃费of和沃尔复热耦合', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你体验', '呃呃费of和沃尔复热耦合', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你躺赢', '难度Max！你没有见过的全新打法！', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡菜鸟带你掉沟', '铲子伤害最低却最多人使用？板砖落下眼泪！', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '是兄弟就来砍我呀', '步枪之王的候选者们，都有啥神通？', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '来带躺          ', '用了这些武器，我就忘记M4A1是什么了', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '国服嘤嘤怪在 此', '【成长之王M27】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '国服嘤嘤怪二 号', '【爆发之王81式】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '是兄弟就来砍我呀', '一个人就是一个队，火力压制安排的明明白白', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你体验', '【MK60冲锋枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你体验', '【弹鼓95式步枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你体验', '【95式轻机枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你体验', '【P90冲锋枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '163', '技术流', '吃鸡大佬带你体验', '重力系统瘫痪？全员失重！空中漫步移动射击', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '手感最好的几把枪，玩家拿到一把输出就拉满', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '呃呃费of和沃尔复热耦合', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡菜鸟带你掉沟', '铲子伤害最低却最多人使用？板砖落下眼泪！', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '是兄弟就来砍我呀', '步枪之王的候选者们，都有啥神通？', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '来带躺          ', '用了这些武器，我就忘记M4A1是什么了', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '国服嘤嘤怪二 号', '【爆发之王81式】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '是兄弟就来砍我呀', '一个人就是一个队，火力压制安排的明明白白', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '【MK60冲锋枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '【弹鼓95式步枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '【95式轻机枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '【P90冲锋枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '重力系统瘫痪？全员失重！空中漫步移动射击', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '手感最好的几把枪，玩家拿到一把输出就拉满', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '155', '手感流', '吃鸡大佬带你体验', '手感最好的几把枪，玩家拿到一把输出就拉满', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '呃呃费of和沃尔复热耦合', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡菜鸟带你掉沟', '铲子伤害最低却最多人使用？板砖落下眼泪！', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '是兄弟就来砍我呀', '步枪之王的候选者们，都有啥神通？', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '来带躺          ', '用了这些武器，我就忘记M4A1是什么了', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '国服嘤嘤怪二 号', '【爆发之王81式】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '是兄弟就来砍我呀', '一个人就是一个队，火力压制安排的明明白白', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '【MK60冲锋枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '【弹鼓95式步枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '【95式轻机枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '【P90冲锋枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '重力系统瘫痪？全员失重！空中漫步移动射击', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '手感最好的几把枪，玩家拿到一把输出就拉满', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '【P90冲锋枪】', '2019-07-08');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '重力系统瘫痪？全员失重！空中漫步移动射击', '2019-07-10');
INSERT INTO game_strategy VALUES (NULL, '160', '带躺流', '吃鸡大佬带你体验', '手感最好的几把枪，玩家拿到一把输出就拉满', '2019-07-10');

#创建保存武器分类的表
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


#创建保存枪支数据的表
CREATE TABLE bz_weapon(
uid INT PRIMARY KEY AUTO_INCREMENT,   #枪支编号
pic VARCHAR(128),                     #图片的路径
url VARCHAR(128),
title VARCHAR(32),                   #枪支名称
subtitle VARCHAR(128),               #枪支介绍
details VARCHAR(128),                     #子弹类型
bz_listId SMALLINT                   #枪支分类
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


#创建保存游戏公告
CREATE TABLE Game_Notice(
Notid INT PRIMARY KEY AUTO_INCREMENT,   #公告编号
Nottitle VARCHAR(32),                   #公告标题
NotContent VARCHAR(128),                 #公告内容
Nottime DATE,                 #公告时间
Gameid SMALLINT                 #所属游戏编号
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


#游戏周边表
CREATE TABLE bz_ambitus(
    lid INT PRIMARY KEY AUTO_INCREMENT,/*产品id*/
    img VARCHAR(128),    /*产品图片*/
    price DECIMAL(6,2),  /*产品价格*/
    title VARCHAR(128),  /*产品标题*/
    detail VARCHAR(64),  /*产品详细*/
    classify VARCHAR(32) /*产品分类*/
);
INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/1.jpg',56.00,
 '绝地大逃杀游戏空投吃鸡战场毛绒抱枕','材质:毛绒 图案:卡通 尺寸:60X60cm','抱枕');

 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/2.jpg',66.00,
 '绝地求生吃鸡游戏周边沙发靠垫靠背','材质:毛绒 图案:卡通 尺寸:60X60cm','抱枕');

 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/3.jpg',56.00,
 '绝地求生吃鸡平底锅创意女生玩偶抱枕','材质:毛绒 图案:卡通 尺寸:50X60cm','抱枕');

 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/4.jpg',66.00,
 '绝地求生同款抱枕抖音网红抱枕','材质:毛绒 图案:卡通 尺寸:60X60cm','抱枕');

 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/5.jpg',66.00,
 '新款绝地求生网红子弹吃鸡水杯','容量:400mL 材质:304不锈钢','水杯');
 
 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/6.jpg',56.00,
 '绝地求生吃鸡创意个性易拉罐水杯','容量:400mL 材质:304不锈钢','水杯');
 
  INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/7.jpg',56.00,
 '绝地求生吃鸡个性水杯保温杯','容量:400mL 材质:304不锈钢','水杯');

  INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/8.jpg',66.00,
 '吃鸡保温杯个性简约网红ins水杯','容量:400mL 材质:304不锈钢','水杯');

 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/9.jpg',56.00,
 '绝地求生钱包男游戏周边零钱包','材质:合成革 风格:卡通','钱包');

 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/10.jpg',66.00,
 '吃鸡钥匙包男迷彩腰挂炸弹小包','材质:涤纶 风格:迷彩','钱包');

 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/11.jpg',56.00,
 '绝地求生大吉大利晚上吃鸡钱包','材质:涤棉 风格:折叠','钱包');

 INSERT INTO bz_ambitus VALUES(null,'img/ju_jia/12.jpg',66.00,
 'H1Z1大吉大利晚上吃鸡绝地求生钱包','材质: 涤棉  风格:卡通','钱包');

 
INSERT INTO bz_ambitus VALUES(null,'img/shu_ma/1.jpg',56.00,
 '绝地求生苹果iphoneXsmax吃鸡手机壳','风格:简约 材质:硅胶','手机壳');

 INSERT INTO bz_ambitus VALUES(null,'img/shu_ma/2.jpg',66.00,
 '吃鸡苹果iphone 6/7/8吃鸡手机壳','风格:简约 材质:硅胶','手机壳');

 INSERT INTO bz_ambitus VALUES(null,'img/shu_ma/3.jpg',56.00,
 '绝地求生98K iphoneX手机壳','风格:简约 材质:硅胶','手机壳');

 INSERT INTO bz_ambitus VALUES(null,'img/shu_ma/4.jpg',66.00,
 '吃鸡iPhone X个性简约网红手机壳','风格:简约 材质:硅胶','手机壳');

 INSERT INTO bz_ambitus VALUES(null,'img/shu_ma/5.jpg',56.00,
 '吃鸡鼠标垫超大地图鼠标垫游戏专用','材质:胶垫 尺寸:800x300mm','鼠标垫');

 INSERT INTO bz_ambitus VALUES(null,'img/shu_ma/6.jpg',66.00,
 'PUBG米拉玛地图吃鸡个性鼠标垫','材质:胶垫 尺寸:400x300mm','鼠标垫');

 INSERT INTO bz_ambitus VALUES(null,'img/shu_ma/7.jpg',56.00,
 '新沙漠地图吃鸡反恐精英鼠标垫','材质:胶垫 尺寸:800x300mm','鼠标垫');

 INSERT INTO bz_ambitus VALUES(null,'img/shu_ma/8.jpg',66.00,
 '绝地求生大逃杀超大吃鸡鼠标垫','材质:胶垫 尺寸:800x300mm','鼠标垫');

 
INSERT INTO bz_ambitus VALUES(null,'img/pei_jian/1.jpg',56.00,
 '绝地求生吃鸡游戏三级头模型挂件','材质:合金 种类:三级头盔','吊坠');

 INSERT INTO bz_ambitus VALUES(null,'img/pei_jian/2.jpg',66.00,
 '绝地求生吃鸡周边玫瑰金子弹挂件','材质:合金 种类:玫金子弹','吊坠');

 INSERT INTO bz_ambitus VALUES(null,'img/pei_jian/3.jpg',56.00,
 '吃鸡钥匙可打开挂件AK步枪模型','材质:合金 种类:AK47模型','吊坠');

 INSERT INTO bz_ambitus VALUES(null,'img/pei_jian/4.jpg',66.00,
 '绝地求生吃鸡带妹吃鸡专属徽章','材质:合金 种类:带妹吃鸡','吊坠');

 INSERT INTO bz_ambitus VALUES(null,'img/pei_jian/5.jpg',56.00,
 '绝地求生吃鸡游戏枪模型挂件','名称:钥匙扣 分类:AK+手雷+玫金平底锅','挂件');

 INSERT INTO bz_ambitus VALUES(null,'img/pei_jian/6.jpg',66.00,
 '吃鸡周边98k模型汽车钥匙挂件','名称:钥匙扣 分类:枪模型','挂件');

 INSERT INTO bz_ambitus VALUES(null,'img/pei_jian/7.jpg',56.00,
 '绝地求生吃鸡周边枪模型挂件','名称:钥匙扣 分类:枪模型','挂件');

 INSERT INTO bz_ambitus VALUES(null,'img/pei_jian/8.jpg',66.00,
 'H1Z1大吉大利吃鸡游戏枪模型挂件','名称:钥匙扣 分类:AWM+三级头盔','挂件');

