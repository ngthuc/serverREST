var express = require('express');
var router = express.Router();
// var Transaction = require('./Models/Transaction');
var SinhVien = require('./Models/SinhVien');
router.get('/:id?',function(req,res,next){
    // if(req.params.id){
    //     Transaction.getTransactionById(req.params.id,function(err,rows){
    //         if(err){
    //             res.json(err);
    //         }
    //         else{
    //             res.json(rows);
    //         }
    //     });
    // }else{
    //     Transaction.getAllTransaction(function(err,rows){
    //         if(err){
    //             res.json(err);
    //         } else {
    //             res.json(rows);
    //         }
    //
    //     });
    // }
    if(req.params.id){
        SinhVien.getSinhVienById(req.params.id,function(err,rows){
            if(err){
                res.json(err);
            }
            else{
                res.json(rows);
            }
        });
    }else{
        SinhVien.getAllSinhVien(function(err,rows){
            if(err){
                res.json(err);
            } else {
                res.json(rows);
            }

        });
    }
});

router.post('/',function(req,res,next){
    // Transaction.addTransaction(req.body,function(err,count){
    //     if(err){
    //         res.json(err);
    //     } else{
    //         res.json(req.body);
    //     }
    // });
    SinhVien.addSV(req.body,function(err,count){
        if(err){
            res.json(err);
        } else{
            res.json(req.body);
        }
    });
});

router.delete('/:id',function(req,res,next){
    // Transaction.deleteTransaction(req.params.id,function(err,count){
    //     if(err){
    //         res.json(err);
    //     } else{
    //       res.json(count);
    //     }
    // });
    SinhVien.deleteSV(req.params.id,function(err,count){
        if(err){
            res.json(err);
        } else{
          res.json(count);
        }
    });
});

router.put('/:id',function(req,res,next){
    Transaction.updateTransaction(req.params.id,req.body,function(err,rows){
        if(err){
            res.json(err);
        } else{
            res.json(rows);
        }
    });
    SinhVien.updateSV(req.params.id,req.body,function(err,rows){
        if(err){
            res.json(err);
        } else{
            res.json(rows);
        }
    });
});
module.exports=router;
