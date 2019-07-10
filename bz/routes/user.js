//引入express
const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由对象 
var  router=express.Router();

 //用户

  router.post('/login',function(req,res){
    var obj=req.body;
   console.log(obj); 
	if(!obj.uname){	//判断用户名是否为空
	res.send({code:401,msg:'uname required'});	
	return;//阻止往后执行
	};
	if(!obj.upwd){//判断密码是否为空
	res.send({code:402,msg:'upwd required'});
	return;
	};
   //查管理员信息表中是否含有用户名和用户密码是否同时匹配的数据
    pool.query('select ? from  bz_user where uname=?',[obj.upwd,obj.uname],function(err,result){
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

//用户列表
//注册
router.get('/user_reg',function(req,res){
	//获取get请求的数据
	var obj=req.query;
	//检测值是否为空
	if(!obj.uname){
	  res.send({code:401,msg:'uname required'});
	  //阻止往后执行
	  return;
	}
	if(!obj.upwd){
	  res.send({code:402,msg:'upwd required'});
	  return;
	}
	if(!obj.email){
	  res.send({code:403,msg:'email required'});
	  return;
	}
	if(!obj.phone){
	  res.send({code:404,msg:'phone required'});
	  return;
	}
	if(!obj.avatar){
	  res.send({code:404,msg:' avatar required'});
	  return;
	}
	if(!obj.user_name){
	  res.send({code:404,msg:' user_name required'});
	  return;
	}
	  if(!obj.gender){
	  res.send({code:404,msg:'gender required'});
	  return;
	}
	//执行SQL语句
	pool.query('INSERT INTO bz_user SET ?',[obj],function(err,result){
	  if(err) throw err;
	  console.log(result);
	  //判断是否注册成功
	  if(result.affectedRows>0){
		res.send({code:200,msg:'注册成功'});
	  }
	});
  });
  
  
  //删除
  router.get('/user_delete',function(req,res){
	//获取get数据
	var obj=req.query;
	//验证是否为空
	if(!obj.uid){
	  res.send({code:401,msg:'uid 为空,请重新输入'});
	  return;
	}
	//执行SQL语句
	pool.query('DELETE FROM bz_user WHERE uid=?',[obj.uid],function(err,result){
	  if(err) throw err;
	  //console.log(result);
	  if(result.affectedRows>0){
		res.send({code:200,msg:'删除成功'});
	  }else{
		res.send({code:301,msg:'删除失败'});
	  }
	});
  });
  
  //修改
  router.get('/user_update',function(req,res){
	//获取get请求数据
	var obj=req.query;
	var n=400;
	//遍历对象属性，获取所有的属性
	for(var key in obj){
	  n++;
	  //console.log(key,obj[key]);
	  //判断属性值是否为空
	  if(!obj[key]){
		res.send({code:n,msg:key+' required'});
		return;
	  }
	}
	//执行SQL语句，修改数据
	pool.query('UPDATE bz_user SET uname=?,upwd=?,phone=?,email=?,gender=?,user_name=?,avatar=? WHERE uid=?',[
		obj.uname,
		obj.upwd,
		obj.phone,
		obj.email,
		obj.gender,
		obj.user_name,
		obj.avatar,
		obj.uid
	  ],function(err,result){
	  if(err) throw err;
	  //判断是否修改成功 --16:18
	  if(result.affectedRows>0){
		res.send({code:200,msg:'修改成功'});
	  }else{
		res.send({code:301,msg:'修改失败'});
	  }
	});
  })
  
  //查询
  router.get("/user_userlist",(req,res)=>{
  var obj=req.query.uid;
   //连接池查询所有用户
  pool.query("SELECT * FROM bz_user WHERE uid=?",[obj],(err,result)=>{
		  if(err) throw err;
		  res.send(result);
		  console.log(result);
	  });
  });
  

//导出路由对象
module.exports=router ;