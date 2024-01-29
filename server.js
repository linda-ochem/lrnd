const express = require ('express')

const app = express()
app.get('/', (req, res)=>{
res.send('welcome to the home page')
})

app.listen(8085, ()=>{
    console.log('server is listening on port 3000')
})