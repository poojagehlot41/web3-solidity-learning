const express = require("express");
const mongoose = require("mongoose");

const app = express();

mongoose.connect(
  "mongodb+srv://pooja31:gehlot341@cluster0.lpsx24r.mongodb.net/?appName=Cluster0"
)
.then(() => console.log("MongoDB Connected"))
.catch((err) => console.log(err));

app.get("/", (req, res) => {
  res.send("MongoDB Connected Successfully");
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});