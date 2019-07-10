const express = require('express')
const pool = require('../pool.js')
var posting = express.Router()
/*-------------------------------posting表-------------------------- */
// 查找帖子
posting.get("/check",(req,res)=>{
    // 获取页面地址栏id=后的内容
    var obj=req.query.id
    console.log(res);
    pool.query("select * from posting where id=?",[obj],(err,result)=>{
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
posting.get("/delete",(req,res)=>{
    // 获取页面地址栏id=后的内容
    var de = req.query.id
    pool.query(" DELETE FROM posting  WHERE id=?",[de],(err,result)=>{
        if (err) throw err
        if (result.affectedRows>0){
            res.send({code:1,msg:"删除成功"})
        }else{
            res.send({code:0,msg:"用户不存在删除失败"})
        }
    })
})
// 增加
posting.get("/gain",(req,res)=>{
    // 获取页面地址栏id=后的内容
    var gn = req.query
    console.log(gn)
    pool.query("insert into posting set ?",[gn],(err,result)=>{
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
posting.get("/alter",(req,res)=>{
    var obj =req.query
    pool.query("update posting set ? where id=?",[obj,obj.id],(err,result)=>{
        if (err) throw err
        console.log(result);
        if (result.affectedRows>0) {
            res.send({code:1,msg:"修改成功"})
        } else {
            res.send({code:0,msg:"用户不存在修改失败"})
        }
    })
})

module.exports = posting;