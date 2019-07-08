const express = require('express')
const pool = require('../pool.js')
var strategy = express.Router()
/*-------------------------------strategy表-------------------------- */
// 查找
strategy.get("/checkS",(req,res)=>{
    // 获取页面地址栏stid=后的内容
    var obj=req.query.stid
    console.log(res);
    pool.query("select * from game_strategy where stid=?",[obj],(err,result)=>{
        if(err) throw err;
        console.log(result);
        
        if (result.length>0) {
            res.send(result)
        }else{
            res.send({code:0,msg:"Can't find"})
        }
    })
   
   
})
// 删除
strategy.get("/deleteS",(req,res)=>{
    // 获取页面地址栏stid=后的内容
    var de = req.query.stid
    pool.query(" DELETE FROM game_strategy  WHERE stid=?",[de],(err,result)=>{
        if (err) throw err
        if (result.affectedRows>0){
            res.send({code:1,msg:"删除成功"})
        }else{
            res.send({code:0,msg:"用户不存在删除失败"})
        }
    })
})
// 增加
strategy.get("/gainS",(req,res)=>{
    // 获取页面地址栏stid=后的内容
    var gn = req.query
    console.log(gn)
    pool.query("insert into game_strategy set ?",[gn],(err,result)=>{
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
// 修改
strategy.get("/alterS",(req,res)=>{
    var obj =req.query
    pool.query("update game_strategy set ? where stid=?",[obj,obj.stid],(err,result)=>{
        if (err) throw err
        console.log(result);
        if (result.affectedRows>0) {
            res.send({code:1,msg:"修改成功"})
        } else {
            res.send({code:0,msg:"用户不存在修改失败"})
        }
    })
})
module.exports = strategy