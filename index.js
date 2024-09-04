const express = require('express')
const app = express()

app.get('/',(req,res) => {
    res.send("Hello Đây là Docker")
})

const PORT  = 3000;
app.listen(PORT,()=>{
    console.log(`Server đang chạy ở port 3000`)
})