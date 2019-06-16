  #客户端连接服务器
  SET NAMES UTF8;
  #丢弃数据库
  DROP DATABASE IF EXISTS camerich;
  #创建数据库
  CREATE DATABASE camerich CHARSET=UTF8;
  #使用数据库 camerich
  USE camerich;
  #创建用户信息表camerich_user
  CREATE TABLE camerich_user(
    uid  INT PRIMARY KEY  AUTO_INCREMENT , #编号
    uname VARCHAR(32),  #用户名
    upwd  VARCHAR(32),  #用户密码
    urole VARCHAR(16),  #用户身份
    uemail VARCHAR(32), #用户邮箱
    uphone VARCHAR(16), #用户电话
    uadd  VARCHAR(32),  #用户地址
    ucompany VARCHAR(32) #用户公司
  );
 INSERT INTO camerich_user  VALUES(NULL,'小明','123456','经销商','1554@qq.com','132465414','深圳','达内');
#查询表
SELECT *FROM camerich_user;
