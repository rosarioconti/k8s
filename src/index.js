const express = require('express')
const app = express()
const port = 3002

var message = process.env.MESSAGE + " Hello world!";

app.get('/', (req, res) => res.send(message))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
