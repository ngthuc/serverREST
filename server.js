var express = require('express');
var bodyparser = require('body-parser');

var connection = require('./Dbconnection');
var routesSV = require('./routesSV');
var routesTSV = require('./routesTSV');

var app = express();
app.use(bodyparser.urlencoded({extended: true})); //support x-www-form-urlencoded
app.use(bodyparser.json());

app.use('/sinhvien',routesSV);
app.use('/transaction',routesTSV);

var server = app.listen(10110, function() {
  console.log('Server listening on port ' + server.address().port);
});

module.exports = app;
