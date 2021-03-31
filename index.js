const express = require('express');
const PORT = process.env.PORT || 5000;

const app = express(); 

app.get('/', (request, response) => {
  response.json({
    message: 'Hello World!'
  })
});

app.listen(PORT, () => console.log(`Listening on ${ PORT }`));
