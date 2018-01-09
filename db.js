var mongoose = require('mongoose');

var connectionString = `mongodb://${process.env.DB_HOST}/${process.env.DB_NAME}`;
  
mongoose.connect(connectionString, { useMongoClient: true });