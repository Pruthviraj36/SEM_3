const mongoose = require('mongoose')

const college = new mongoose.Schema({
    collegeName: String,
    location: String,
    students: Number
})

const College = mongoose.model('Message', college);

module.exports = College