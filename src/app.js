const express = require("express");
const app = express();

app.get("/tree", (_req, res) =>  {
  res.status(200).send('{"Favorite Tree": "Sequoia"}')
})
module.exports = app;