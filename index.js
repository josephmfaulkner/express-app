const { getAllMessages } = require('./services/MessageService');

const express = require('express')
const PORT = process.env.PORT || 5000

const app = express(); 

app.get('/', (request, response) => {
  response.json({
    message: 'Hello World!'
  })
});

app.get('/all', async (request, response) => {
  try {
    const results = await getAllMessages();
    response.json(results);
  } catch (err) {
    response.status(500).send(err);
  }
});

app.listen(PORT, () => console.log(`Listening on ${ PORT }`));

