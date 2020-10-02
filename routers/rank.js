var express = require('express')
var router = express.Router()

var bookDAO = require('../models/dao/bookDAO');
var path = require('path');

router.get('/:storeID', function (req, res, next) {
    bookDAO.getRankforRank(req.params.storeID,function(err, Ranks) {
        if(err) return next(err)  
        //console.log(Ranks[0])
        res.render('rank',{
            rank : Ranks[0]
        });
    })
})


module.exports = router