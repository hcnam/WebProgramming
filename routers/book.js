var express = require('express')
var router = express.Router()

var bookDAO = require('../models/dao/bookDAO');
var path = require('path');


router.get('/:bookNo', function (req, res, next) {
    //console.log(req.params.bookNo);
    bookDAO.getBookInfo(req.params.bookNo,function(err, bookInfo) {
        if(err) return next(err)  
        bookInfo[0].pub_date = bookInfo[0].pub_date.toISOString().substr(0,10)
        bookDAO.getRankwithISBN(req.params.bookNo,function(err, bookRank) {
            bookDAO.getWeek(function(err,weeks){
                if(err) return next(err)
                var weekData = new Array();
                //console.log(weeks)
                for(var i of weeks){
                    //console.log(i.week.toISOString().substr(0,10))
                    tmp = i.week.toISOString().substr(0,10)
                    weekData.push(tmp)
                }

                var kyobo = new Array();
                var aladin = new Array();
                var young = new Array();
                var yes = new Array();
                var bandi = new Array();
                
                for(i of bookRank[0]){                   
                    if(i.store_id==2){
                        if(i.week == null){
                            kyobo.push(16)
                            break;
                        }
                        chk = 0;
                        tmp = i.week.toISOString().substr(0,10)
                        for(j in weekData){
                            if( tmp == weekData[j]){
                                kyobo.push(i.rank)
                                chk = 1;
                                break;
                            }
                        }
                        if(chk==0)
                            kyobo.push(16)
                    }
                    if(i.store_id==3){
                        if(i.week == null){
                            aladin.push(16)
                            break
                        }
                        chk = 0;
                        tmp = i.week.toISOString().substr(0,10)
                        for(j in weekData){
                            if( tmp == weekData[j]){
                                aladin.push(i.rank)
                                chk = 1;
                                break;
                            }
                        }
                        if(chk==0)
                            aladin.push(16)
                    }
                    if(i.store_id==4){
                        if(i.week == null){
                            young.push(16)
                            break
                        }
                        chk = 0;
                        tmp = i.week.toISOString().substr(0,10)
                        for(j in weekData){
                            if( tmp == weekData[j]){
                                young.push(i.rank)
                                chk = 1;
                                break;
                            }
                        }
                        if(chk==0)
                            young.push(16)
                    }
                    if(i.store_id==5){
                        if(i.week == null){
                            yes.push(16)
                            break
                        }
                        chk = 0;
                        tmp = i.week.toISOString().substr(0,10)
                        for(j in weekData){
                            if( tmp == weekData[j]){
                                yes.push(i.rank)
                                chk = 1;
                                break;
                            }
                        }
                        if(chk==0)
                            yes.push(16)
                    }
                    if(i.store_id==6){
                        if(i.week == null){
                            bandi.push(16)
                            break
                        }
                        chk = 0;
                        tmp = i.week.toISOString().substr(0,10)
                        for(j in weekData){
                            if( tmp == weekData[j]){
                                bandi.push(i.rank)
                                chk = 1;
                                break;
                            }
                        }
                        if(chk==0)
                            bandi.push(16)
                    }
                }
                rankData = {
                    week : weekData,
                    rank : {
                        kyo : kyobo,
                        ala : aladin,
                        yp : young,
                        yes24 : yes,
                        ban : bandi
                    }
                }
                //console.log(rankData);
                bookDAO.getCommentwithISBN(req.params.bookNo,function(err, comments) {
                    if(err) return next(err)
                    //console.log(comments[0])
                    var list
                    for(list in comments[0]){
                        //console.log(comments[0][list].time)
                        temp = comments[0][list].time.toISOString().substr(0,10)
                        comments[0][list].time = temp
                    }
                    bookDAO.getPricewithISBN(req.params.bookNo,function(err, prices) {
                        if(err) return next(err)
                        //console.log(prices[0]);
                        bookDAO.getStatusWithISBN(req.params.bookNo,function(err, stat) {
                            if(err) return next(err)
                            //console.log(rankData); 
                            bookDAO.getRatewithISBN (req.params.bookNo,function(err, rate) {
                                //console.log(rate[0])

                                res.render('book',{
                                    bookData : bookInfo[0],
                                    ranks : rankData,
                                    comment : comments[0],
                                    price : prices[0],
                                    status : stat[0],
                                    rates: rate[0]
                                })
                            })
                            
                        })
                    })
                })
            })
        })
    })
})

module.exports = router