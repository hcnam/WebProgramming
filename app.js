var express = require('express');
var app = express();
var path = require('path');
var bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use(express.static(__dirname + '/public'));

var bookDAO = require('./models/dao/bookDAO');

// templete엔진 = ejs
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// router
var index = require('./routers/index');
app.use('/', index);
var book = require('./routers/book');
app.use('/book', book);
var rank = require('./routers/rank');
app.use('/rank', rank);

app.use(function (err, req, res, next) {
	console.error(err);
	res.end("<h1>ERROR!</h1>")
});

app.listen(3000, function () {
  console.log('3000번 포트 구동중..');
});

