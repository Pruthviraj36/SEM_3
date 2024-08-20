const express = require('express')
const bodyParser = require('body-parser')
const mongoose = require('mongoose')
const College = require('./College')

PORT = 3000 
const app = express()
app.use(bodyParser.urlencoded({extended:false}))

mongoose.connect(connectionString).then(()=>{
    console.log(`MongoDB connected`)

    // getAll
    app.get('/colleges', (req, res) => {
        const colleges = College.find().then(() => {
            res.send(colleges)
        })
    })

    // getById
    app.get('/colleges/:name', (req, res) => {
        College.findOne({ name: req.params.name }).then(college => {
            res.send(college)
        })
    })

    // Add
    app.post('/colleges', (req, res) => {
        const college = new College(req.body)
        college.save().then(() => {
            res.send(college)
        })
    })

    // Delete
    app.delete('/colleges/:name', (req, res) => {
        College.findOneAndDelete({ name: req.params.name }).then(() => {
            res.send({ message: 'College deleted' })
        })
    })

    // Update
    app.patch('/colleges/:name', (req, res) => {
        College.findOneAndUpdate({ name: req.params.name }, req.body, { new: true }).then
    })

    app.listen(PORT, ()=>{
        console.log(`Server is running on port ${PORT}`)
    })
})