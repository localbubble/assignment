const express = require("express");
const app = express();

app.get("/", (_req, res) =>  {
  res.status(200).send('{"Favorite Tree": "Sequoia"}')
})
module.exports = app;