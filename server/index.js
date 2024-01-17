// IMPORT FROM PACKAGES
const express = require('express');
const mongoose = require('mongoose');

// IMPORT FROM FILES
const authRouter = require('./routes/auth.js');

// INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://kalkieshward:KalkiEshwarD1025[!#$]@cluster0.kr0mcbp.mongodb.net/?retryWrites=true&w=majority";
// MIDDLEWARE
app.use(authRouter);

// CONNECTIONS
mongoose.connect(DB).then(() => {
    console.log('Connection to mongoose successful');
}).catch((e) => {
    console.log(e);
});


app.listen(PORT, () => {
    console.log(`Connected at port ${3000}`);
});