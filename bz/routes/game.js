//创建路由器
const express=require("express");
//引入连接池对象
const pool=require("../pool.js");
//创建路由器对象
var router=express.Router();


//往武器列表添加数据
//http://127.0.0.1:8080/game/list_add?bz_listId=10&title=1232&subtitle=123&details=123&pic=235
router.get('/list_add',function(req,res){
  //获取get请求的数据
  var obj=req.query;
  if(!obj.bz_listId){
    res.send({code:401,msg:'bz_listId 不存在,请重新输入'});
	//阻止往后执行
	return;
  }
  if(!obj.title){
    res.send({code:402,msg:'title 不存在,请重新输入'});
	return;
  }
  if(!obj.subtitle){
    res.send({code:403,msg:'subtitle 不存在,请重新输入'});
	return;
  }
  if(!obj.details){
    res.send({code:404,msg:'details 不存在,请重新输入'});
	return;
  }
  if(!obj.pic){
    res.send({code:404,msg:'pic 不存在,请重新输入'});
	return;
  }
  //执行SQL语句
  pool.query('INSERT INTO bz_weapon SET ?',[obj],function(err,result){
    if(err) throw err;
	console.log(result);
//	判断是否添加成功
    if(result.affectedRows>0){
	  res.send({code:200,msg:'添加成功'});
	}
  });
});


//删除武器列表
//http://127.0.0.1:8080/game/list_delete?uid=30
router.get('/list_delete',function(req,res){
  //获取get数据
  var obj=req.query;
  //验证是否为空
  if(!obj.uid){
    res.send({code:401,msg:'uid 为空,请重新输入'});
	return;
  }
  //执行SQL语句
  pool.query('DELETE FROM bz_weapon WHERE uid=?',[obj.uid],function(err,result){
    if(err) throw err;
	//console.log(result);
	if(result.affectedRows>0){
	  res.send({code:200,msg:'删除成功'});
	}else{
	  res.send({code:301,msg:'删除失败'});
	}
  });
});



//修改武器列表
//浏览器地址栏测试地址
router.get('/list_update',function(req,res){
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
pool.query('UPDATE bz_weapon SET title=?,subtitle=?,details=? WHERE uid=?',[
	  obj.details,
	  obj.title,
	  obj.subtitle,
	  obj.uid
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


//查询武器列表
//http://127.0.0.1:8080/user/list_userlist?bz_listId=10
router.get("/list_userlist",(req,res)=>{
var obj=req.query.bz_listId;
 //连接池查询所有用户
pool.query("SELECT * FROM bz_weapon WHERE bz_listId=?",[obj],(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});



//以下为公告列表

//添加
//http://127.0.0.1:8080/user/game_add?Gameid=60&Nottitle=123&NotContent=%E4%BD%A0%E5%A5%BD%E5%91%80%E5%8F%AC%E5%94%A4%E5%B8%88&Nottime=2019-7-7
router.get('/game_add',function(req,res){
  //获取get请求的数据
  var obj=req.query;
  if(!obj.Gameid){
    res.send({code:401,msg:'gameid 不存在'});
	//阻止往后执行
	return;
  }
  if(!obj.Nottitle){
    res.send({code:402,msg:'Notitle 不存在'});
	return;
  }
  if(!obj.NotContent){
    res.send({code:403,msg:'NotContent 不存在'});
	return;
  }
  if(!obj.Nottime){
    res.send({code:404,msg:'Nottime 不存在'});
	return;
  }
  //执行SQL语句
  pool.query('INSERT INTO Game_notice SET ?',[obj],function(err,result){
    if(err) throw err;
	console.log(result);
//	判断是否添加成功
    if(result.affectedRows>0){
	  res.send({code:200,msg:'添加成功'});
	}
  });
});


//删除
//http://127.0.0.1:8080/user/game_delete?Notid=30
router.get('/game_delete',function(req,res){
  //获取get数据
  var obj=req.query;
  //验证是否为空
  if(!obj.Notid){
    res.send({code:401,msg:'Notid 为空,请重新输入'});
	return;
  }
  //执行SQL语句
  pool.query('DELETE FROM Game_notice WHERE Notid=?',[obj.Notid],function(err,result){
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
router.get('/game_update',function(req,res){
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
pool.query('UPDATE Game_notice SET Nottitle=?,NotContent=?,Nottime=? WHERE Notid=?',[
	  obj.Nottitle,
	  obj.NotContent,
	  obj.Nottime,
	  obj.Notid
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

//查询
//http://127.0.0.1:8080/user/game_userlist?Gameid=70
router.get("/game_notlist",(req,res)=>{
var obj=req.query.Gameid;
 //连接池查询所有用户
pool.query("SELECT * FROM Game_notice WHERE Gameid=?",[obj],(err,result)=>{
		if(err) throw err;
		res.send(result);
		console.log(result);
	});
});
//导出对象到服务器
module.exports=router;