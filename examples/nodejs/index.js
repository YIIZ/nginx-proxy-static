const http = require('http')

const server = http.createServer((req, res) => {
  res.statusCode = 200
  res.setHeader('Content-Type', 'text/html')
  res.end(`
    <link rel="stylesheet" href="/assets/app.css">
    <h1>Hello</h1>
  `)
})

server.listen(3000, () => {
  console.log('server running')
})
