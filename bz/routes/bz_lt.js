const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由器对象
var router=express.Router();
//测试路由
// router.get("/sp",(req,res)=>{
//     res.send("第一个程序");
// });

//添加商品
router.get('/inse',function(req,res){
	//获取get请求的数据
	var obj=req.query;
	if(!obj.lid){
	  res.send({code:401,msg:'lid 不存在,请重新输入'});
   //阻止往后执行
   return;
	}
	if(!obj.img){
	  res.send({code:402,msg:'img 不存在,请重新输入'});
   return;
	}
	if(!obj.price){
	  res.send({code:403,msg:'price 不存在,请重新输入'});
   return;
	}
	if(!obj.title){
	  res.send({code:404,msg:'title 不存在,请重新输入'});
   return;
	}
	if(!obj.detail){
	  res.send({code:404,msg:'detail 不存在,请重新输入'});
   return;
	}
	if(!obj.classify){
		res.send({code:404,msg:'classify 不存在,请重新输入'});
	 return;
	}
	//执行SQL语句
	pool.query('INSERT INTO bz_ambitus SET ?',[obj],function(err,result){
	  if(err) throw err;
   console.log(result);
  // 判断是否添加成功
	  if(result.affectedRows>0){
	 res.send({code:200,msg:'添加成功'});
   }
	});
  });

//查询商品
//127.0.0.1:8080/bz_lt/sele?lid=1
router.get('/sele',(req,res)=>{
	//获取get请求数据
	var sel=req.query;
	//验证是否为空
	if(!sel.lid){
		res.send({code:401,msg:'lid null'});
		//阻止往后执行
		return;
	}
	//执行sql语句
	var sql='SELECT * FROM bz_ambitus WHERE lid=?';
	pool.query(sql,[sel.lid],(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});

//删除商品
router.get('/dele',(req,res)=>{
	//获取get请求数据
	var del=req.query;
	//验证是否为空
	if(!del.lid){
		res.send({code:401,msg:'lid null'});
		//阻止往后执行
		return;
	}
	//执行sql语句
	var sql='DELETE FROM bz_ambitus WHERE lid=?';
	pool.query(sql,[del.lid],(err,result)=>{
		if(err) throw err;
		res.send({code:1,msg:"删除成功"});
	});
});

//修改商品
router.get('/list',function(req,res){
	//获取get请求数据
	var obj=req.query;
	var n=400;
	//遍历对象属性，获取所有的属性
	for(var key in obj){
   n++;
   //判断属性值是否为空
   if(!obj[key]){
	 res.send({code:n,msg:key+' required'});
	 return;
   }
	}
	//执行SQL语句，修改数据
  pool.query('UPDATE bz_ambitus SET img=?,price=?,title=?,detail=?,classify=? WHERE lid=?',[
	 obj.img,
	 obj.price,
	 obj.title,
	 obj.detail,
	 obj.classify,
	 obj.lid
   ],function(err,result){
	  if(err) throw err;
   //判断是否修改成功
   if(result.affectedRows>0){
	 res.send({code:200,msg:'修改成功'});
   }else{
	 res.send({code:301,msg:'修改失败'});
   }
	});
  })


//导出路由器对象
module.exports=router;