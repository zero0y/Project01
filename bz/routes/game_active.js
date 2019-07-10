const express = require('express')
const pool = require('../pool.js')
var active = express.Router()
/*-------------------------------active表-------------------------- */
// 查找游戏公告
active.get("/check",(req,res)=>{
    // 获取页面地址栏actid=后的内容
    var obj=req.query.actid
    console.log(res);
    pool.query("select * from game_active where actid=?",[obj],(err,result)=>{
        if(err) throw err;
        console.log(result);
        
        if (result.length>0) {
            res.send(result)
        }else{
            res.send({code:0,msg:"Can't find"})
        }
    })
   
   
})
// 删除游戏公告(管理员权限)
active.get("/delete",(req,res)=>{
    // 获取页面地址栏actid=后的内容
    var de = req.query.actid
    pool.query(" DELETE FROM game_active WHERE actid=?",[de],(err,result)=>{
        if (err) throw err
        if (result.affectedRows>0){
            res.send({code:1,msg:"删除成功"})
        }else{
            res.send({code:0,msg:"用户不存在删除失败"})
        }
    })
})


// 添加游戏公告(管理员权限)
active.get("/gain",(req,res)=>{
    // 获取页面地址栏actid=后的内容
    var gn = req.query
    console.log(gn)
    pool.query("insert into game_active set ?",[gn],(err,result)=>{
        if (err) throw err
        console.log(result);
        if (result.affectedRows>0) {
            res.send({code:1,msg:`添加成功`})
            console.log(gn);
            
        }else{
            res.send({code:0,msg:"添加失败"})
        }
    })
})
// 修改游戏公告(管理员权限)
active.get("/alter",(req,res)=>{
    var obj =req.query
    pool.query("update game_active set ? where actid=?",[obj,obj.actid],(err,result)=>{
        if (err) throw err
        console.log(result);
        if (result.affectedRows>0) {
            res.send({code:1,msg:"修改成功"})
        } else {
            res.send({code:0,msg:"用户不存在修改失败"})
        }
    })
})
module.exports = active