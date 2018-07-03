var mysql=require('mysql');
var connection=mysql.createPool({

 // host:'localhost',
 // user:'root',
 // password:'mysql',
 // database:'quickpayment2'
 host:'localhost',
 user:'root',
 password:'mysql',
 database:'sinhvien'

});
module.exports=connection;
