var express = require('express');
var router = express.Router();
var Transaction = require('./Models/Transaction');
router.get('/:id?',function(req,res,next){
    if(req.params.id){
        Transaction.getTransactionById(req.params.id,function(err,rows){
            if(err){
                res.json(err);
            }
            else{
              if(rows.length > 0){
                res.json(rows);
              }
              else{
                res.json({'message':'Chua co giao dich'});
              }
            }
        });
    }else{
        Transaction.getAllTransaction(function(err,rows){
            if(err){
                res.json(err);
            } else {
              if(rows.length > 0){
                res.json(rows);
              }
              else{
                res.json({'message':'Chua co giao dich'});
              }
            }
        });
    }
});

router.get('/:id?',function(req,res,next){
    if(req.params.id){
        Transaction.getTransactionById(req.params.id,function(err,rows){
            if(err){
                res.json(err);
            }
            else{
              if(rows.length > 0){
                res.json(rows);
              }
              else{
                res.json({'message':'Chua co giao dich'});
              }
            }
        });
    }else{
        Transaction.getAllTransaction(function(err,rows){
            if(err){
                res.json(err);
            } else {
              if(rows.length > 0){
                res.json(rows);
              }
              else{
                res.json({'message':'Chua co giao dich'});
              }
            }
        });
    }
});

router.post('/add',function(req,res,next){
  type = '1'; // Giao dich nhan tien
  money = req.body.amountofmoney;
  if(money > 0) {
    Transaction.checkServiceStaff(req.body.id_pay_member,function(err,rows){
      if(err){
        res.json(err);
      } else{
        if(rows.length > 0){
          id_service = rows[0]['id_member'];
          Transaction.checkUser(req.body.id_collect_member,function(err,rows){
            if(err){
              res.json(err);
            } else{
              if(rows.length > 0){
              id_user = rows[0]['id_member'];
              console.log(id_service + ' - ' + id_user + ' - ' + money + ' - ' + type);
              var transaction = '{"id_pay_member":"' + id_service + '","id_collect_member":"' + id_user + '","amountofmoney":"' + money + '","type_payment":"' + type + '" }';
              data = JSON.parse(transaction);
              Transaction.addTransaction(data,function(err,rows){
                if(err){
                  res.json(err);
                } else{
                  res.json(data);
                  console.log('Thanh cong');
                }
              })
              }
              else{
                res.json({'message':'Khong ton tai ben thanh toan'});
              }
            }
          })
        }
        else{
          res.json({'message':'Khong ton tai ben nhan tien'});
        }
      }
    })
  } else{
    res.json({'message':'Khong du so du de thuc hien giao dich'});
  }
});

router.post('/subtract',function(req,res,next){
  type = '2'; // Giao dich ghi no
  money = req.body.amountofmoney;
  if(money > 0) {
    Transaction.checkServiceStaff(req.body.id_pay_member,function(err,rows){
      if(err){
        res.json(err);
      } else{
        if(rows.length > 0){
          id_service = rows[0]['id_member'];
          Transaction.checkUser(req.body.id_collect_member,function(err,rows){
            if(err){
              res.json(err);
            } else{
              if(rows.length > 0){
              id_user = rows[0]['id_member'];
              console.log(id_service + ' - ' + id_user + ' - ' + money + ' - ' + type);
              var transaction = '{"id_pay_member":"' + id_service + '","id_collect_member":"' + id_user + '","amountofmoney":"' + money + '","type_payment":"' + type + '" }';
              data = JSON.parse(transaction);
              Transaction.addTransaction(data,function(err,rows){
                if(err){
                  res.json(err);
                } else{
                  res.json(data);
                  console.log('Thanh cong');
                }
              })
              }
              else{
                res.json({'message':'Khong ton tai ben thanh toan'});
              }
            }
          })
        }
        else{
          res.json({'message':'Khong ton tai ben nhan tien'});
        }
      }
    })
  } else{
    res.json({'message':'Khong du so du de thuc hien giao dich'});
  }
});

// router.delete('/:id',function(req,res,next){
//     Transaction.deleteTransaction(req.params.id,function(err,count){
//         if(err){
//             res.json(err);
//         } else{
//           res.json(count);
//         }
//     });
// });

// router.put('/:id',function(req,res,next){
//     Transaction.updateTransaction(req.params.id,req.body,function(err,rows){
//         if(err){
//             res.json(err);
//         } else{
//             res.json(rows);
//         }
//     });
//     Transaction.updateTransaction(req.params.id,req.body,function(err,rows){
//         if(err){
//             res.json(err);
//         } else{
//             res.json(rows);
//         }
//     });
// });
module.exports=router;
