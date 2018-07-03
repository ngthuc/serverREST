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

router.post('/add',function(req,res,next){
    Transaction.addTransactionTypeAdd(req.body,function(err,count){
        if(err){
            res.json(err);
        } else{
            res.json(req.body);
        }
    });
});

router.post('/subtract',function(req,res,next){
    // Transaction.addTransactionTypeSubtract(req.body,function(err,count){
    //     if(err){
    //         res.json(err);
    //     } else{
    //         res.json(req.body);
    //     }
    // });
    Transaction.checkServiceStaff(req.body,function(err,count){
        if(err){
            res.json(err);
        } else{
            res.json(req.body);
        }
    });
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
