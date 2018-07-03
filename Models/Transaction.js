var db = require('../Dbconnection');

var Transaction={
	getAllTransaction:function(callback){
		return db.query("Select * from sinhvien",callback);
	},
	getTransactionById:function(id,callback){
		return db.query("select * from sinhvien where Id=?",[id],callback);
	},
	addTransaction:function(sinhvien,callback){
		return db.query("Insert into sinhvien(name,class,dob) values(?,?,?)",[sinhvien.name,sinhvien.class,sinhvien.dob],callback);
	},
	deleteTransaction:function(id,callback){
		return db.query("delete from sinhvien where Id=?",[id],callback);
	},
	updateTransaction:function(id,sinhvien,callback){
		return db.query("update sinhvien set name=?,class=?,dob=? where Id=?",[sinhvien.name,sinhvien.class,sinhvien.dob,id],callback);
	}
};
 module.exports=Transaction;
