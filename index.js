const express = require('express');
const app = express();
const PORT = 8080;

app.get('/', (req, res) => {
  res.send('Sokolovskiy Kirill 30-22');
});

app.listen(PORT, () => {
  console.log(`Сервер запущен на порту ${PORT}`);
});
