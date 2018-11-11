const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.json({ 'msg': 'Hola'})
})

const port = process.env.port || 3000
app.listen(port, () => {
  console.log(`Servidor http://::${port}`)
})