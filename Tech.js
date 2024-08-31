// Tech.js
const express= require('express');
const app= express();
const port=1111;

// GET
app.get('/', (req, res) => {
    res.send('Hello Docker');
});

// LISTEN
app.listen(port,()=>{
    console.log('Tech Server http://localhost:${port} portunda çalışıyor');
    
})