const express =require('express');
const pool = require('./pool');

let port = 5050;   //新浪云中的Node.js只允许5050
let app = express();
app.listen(port,()=>{
    console.log('Server Listening: ',port )
});

app.get ('/category',(req,res)=>{
    pool.query('SELECT id,name FROM co_menu_class',(err,result)=>{
        if(err) throw err;
        res.set('Access-Control-Allow-Origin','*');
        res.json(result);
    })
})