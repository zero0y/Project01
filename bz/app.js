const express=require('express');
//在web服务器下使用路由器  管理员的路由器
const adminRouter=require('./routes/admin.js');
const gameRouter=require('./routes/game.js');
const posting = require('./routes/posting')
const reply = require('./routes/reply')
const active = require('./routes/game_active')
const strategy = require('./routes/game_strategy')

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
server.use('/admin',adminRouter);
server.use('/game',gameRouter);
app.use('/posting',posting)
app.use("/reply",reply)
app.use("/game",active)
app.use("/game",strategy)
