onst express=require('express');
//在web服务器下使用路由器  用户的路由器
const userRouter=require('./routes/user.js');
//引入body-parser
const bodyParser=require('body-parser');
//创建web服务器
var server=express();
//设置端口号
server.listen(8080);
//托管静态资源在public下 网页的访问形式为127.0.0.1:8080/user_reg.html
server.use(express.static('public/html')
//使用bodyparser中间件,将post请求的数据格式化为对象
server.use(bodyParser.urlencoded({
   extended:false  
})); 

//使用的url :/user 
//  把用户的路由器挂载到user下  使用时 /user/login
server.use('/user',userRouter);
