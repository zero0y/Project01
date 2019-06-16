//引入mysql
const mysql=require("mysql");
//创建连接池 传递连接数据库需要的数据
var pool=mysql.createPool({
  host:'127.0.0.1',    //服务器
	  port:'3306',     //端口
	  user:'root',     //用户名
	  password:'',     //密码
	  database:'camerich',   //需要使用的数据库
	  conmmectionLimit:20   //连接池大小
});

  //导出连接池对象
  module.exports=pool;