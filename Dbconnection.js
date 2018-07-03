var mysql=require('mysql');
var connection=mysql.createPool({

 // host:'localhost',
 // user:'root',
 // password:'mysql',
 // database:'quickpayment2'
 host:'db4free.net',
 user:'ngthuc',
 password:'tsv2018_26',
 database:'tsv2018_26'

});
module.exports=connection;
