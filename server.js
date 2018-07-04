var express = require('express');
var bodyparser = require('body-parser');

var connection = require('./Dbconnection');
var student = require('./Controllers/student');
var payment = require('./Controllers/payment');

connection.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});

var app = express();
app.use(bodyparser.urlencoded({extended: true})); //support x-www-form-urlencoded
app.use(bodyparser.json());

app.use('/sinhvien',student);
app.use('/transaction',payment);

var server = app.listen(10110, function() {
  console.log('Server listening on port ' + server.address().port);
});

module.exports = app;
