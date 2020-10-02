var express = require('express')
var router = express.Router()

var bookDAO = require('../models/dao/bookDAO');
var path = require('path');

router.get('/', function (req, res, next) {
    bookDAO.getRankFront1(function(err, amuBook) {
        if(err) return next(err) 
        //console.log(amuBook)
        bookDAO.getRankFront2(function(err, amuOff) {
            if(err) return next(err) 
            //console.log(amuOff)
            bookDAO.getRankFrontAll(function(err, allData) {
                if(err) return next(err) 
                //console.log(allData[0])
                res.render('index',{
                    amuRank : amuBook[0],
                    amuOffer : amuOff[0],
                    rankAll : allData[0]
                })  //render 해서 index에서 받아가도록
            })
        })
    })
    
});

module.exports = router
