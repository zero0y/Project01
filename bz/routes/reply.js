const express = require('express')
const pool = require('../pool.js')
var reply = express.Router()
/*-------------------------------reply表-------------------------- */
// 查找
reply.get("/check",(req,res)=>{
    // 获取页面地址栏id=后的内容
    var obj=req.query.id
    console.log(res);
    pool.query("select * from reply where id=?",[obj],(err,result)=>{
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
reply.get("/delete",(req,res)=>{
    // 获取页面地址栏id=后的内容
    var de = req.query.id
    pool.query(" DELETE FROM reply  WHERE id=?",[de],(err,result)=>{
        if (err) throw err
        if (result.affectedRows>0){
            res.send({code:1,msg:"删除成功"})
        }else{
            res.send({code:0,msg:"用户不存在删除失败"})
        }
    })
})
// 增加
reply.get("/gain",(req,res)=>{
    // 获取页面地址栏id=后的内容
    var gn = req.query
    console.log(gn)
    pool.query("insert into reply set ?",[gn],(err,result)=>{
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
reply.get("/alter",(req,res)=>{
    var obj =req.query
    pool.query("update reply set ? where id=?",[obj,obj.id],(err,result)=>{
        if (err) throw err
        console.log(result);
        if (result.affectedRows>0) {
            res.send({code:1,msg:"修改成功"})
        } else {
            res.send({code:0,msg:"用户不存在修改失败"})
        }
    })
})
module.exports = reply