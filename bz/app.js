const express=require('express');
//在web服务器下使用路由器  管理员的路由器
const adminRouter=require('./routes/admin.js');
const game=require('./routes/game');
const posting = require('./routes/posting')
const reply = require('./routes/reply')
const active = require('./routes/game_active')
const strategy = require('./routes/game_strategy')
const product= require('./routes/bz_lt')
const user= require('./routes/user.js')

//引入body-parser
const bodyParser=require('body-parser');
//创建web服务器
var server=express();
//设置端口号
server.listen(8080);
//托管静态资源在public下 网页的访问形式为127.0.0.1:8080/user_reg.html
server.use(express.static('public'))
//使用bodyparser中间件,将post请求的数据格式化为对象
server.use(bodyParser.urlencoded({
   extended:false  
})); 

//使用的url :/user 
//  把用户的路由器挂载到user下  使用时 /admin
server.use('/admin',adminRouter);  //管理员
server.use('/posting',posting)  //帖子
server.use("/reply",reply)  //回复
server.use("/game",active)   //游戏活动
server.use("/game",strategy)  //游戏攻略
server.use("/game",game)    //游戏图鉴   游戏公告
server.use("/pro",product)    //游戏周边
server.use("/user",user)    //用户信息


