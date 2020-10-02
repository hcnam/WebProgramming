var con = require("../connection");

var bookDAO  = {
    getBookInfo : function(param, callback){
        var sql = 'select * from book_info where ISBN = ?'
        con.query(sql, param, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getRankwithISBN : function(param, callback){
        var sql = 'call get_rank(?)'
        con.query(sql, param, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getCommentwithISBN : function(param, callback){
        var sql = 'call get_comments(?)'
        con.query(sql, param, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getPricewithISBN : function(param, callback){
        var sql = 'call get_price(?)'
        con.query(sql, param, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getStatusWithISBN : function(param, callback){
        var sql = 'select age, fun, practical, dev, expert from book_status where ISBN = ?'
        con.query(sql, param, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getWeek : function(callback){
        var sql = 'select week from rank group by week'
        con.query(sql, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getRatewithISBN : function(param, callback){
        var sql = 'call get_rate(?)'
        con.query(sql, param, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getRankFront1 : function(callback){
        var sql = 'call get_rank1()'
        con.query(sql, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getRankFront2 : function(callback){
        var sql = 'call get_rank2()'
        con.query(sql, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getRankFrontAll : function(callback){
        var sql = 'call get_rank_all()'
        con.query(sql, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
    getRankforRank : function(param, callback){
        var sql = 'call get_rank_store(?)'
        con.query(sql, param, function(err, result){
            if(err) return callback(err)
            callback(null, result)
        })
    },
}

module.exports = bookDAO;
