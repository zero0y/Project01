//引入express
const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由对象 
var  router=express.Router();

 //管理员登入

  router.post('/login',function(req,res){
    var obj=req.body;
   console.log(obj); 
	if(!obj.aname){	//判断用户名是否为空
	res.send({code:401,msg:'aname required'});	
	return;//阻止往后执行
	};
	if(!obj.apwd){//判断密码是否为空
	res.send({code:402,msg:'apwd required'});
	return;
	};
   //查管理员信息表中是否含有用户名和用户密码是否同时匹配的数据
    pool.query('select ? from  bz_admin where aname=?',[obj.apwd,obj.aname],function(err,result){
       if(err)  throw err ;
    if(result.length>0){
	   res.send( {
		   code:200,
		 msg:  'login suc'});
		   }else{
		    res.send( {
		   code:301,
		 msg:  'loginerr'
		    });
	      } ;
 //   res.send('失败');
});
});




//导出路由对象
module.exports=router ;