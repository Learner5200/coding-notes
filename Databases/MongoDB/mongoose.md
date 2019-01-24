# Mongoose

* Mongoose is an ORM for MongoDB/Node.
* It can:
  - manage relationships between data
  - provide schema validation (i.e. data must look like this, have these fields, etc.)
  - translates between objects in code and objects in MongoDB

## Schemas

* A **schema** defines what objects in the database should look like
* Each schema maps to some MongoDB collection (think table) and defines the shape of documents (think rows but also JS objects) in that collection.
  - define keys (representing like object properties) and the SchemaType for each key
  - the **ObjectId** SchemaType is important because it gives us a unique ID


```
var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var blogSchema = new Schema({
  title:  String,
  author: String,
  body:   String,
  comments: [{ body: String, date: Date }],
  date: { type: Date, default: Date.now },
  hidden: Boolean,
  meta: {
    votes: Number,
    favs:  Number
  }
});
```

* Schemas can also define
  - instance methods
  - static Model methods
  - middleware

## Model and documents

* A **Model** is a JS object (like a class I guess, or technically a fancy **constructor**) based upon the schema, which will have functions for saving, updating, deleting, etc.
  - an instance of a Model is called a **document**, and maps one-to-one to documents in MongoDB
* These actions are (I think), aynchronous -> you will need to use promises and do the interesting things with `.then()`
* Can use rich query syntax to perform CRUD operations, e.g:

```
Tank.find({ size: 'small' }).where('createdDate').gt(oneYearAgo).exec(callback);

Tank.deleteOne({ size: 'large' }, function (err) {
  if (err) return handleError(err);
  // deleted at most one tank document
});

Tank.updateOne({ size: 'large' }, { name: 'T-90' }, function(err, res) {
  // Updated at most one doc, `res.modifiedCount` contains the number
  // of docs that MongoDB updated
});
```

## Instance methods

* Can add instance methods to a schema, and they will become available to all instances:

```
// define a schema
  var animalSchema = new Schema({ name: String, type: String });

  // assign a function to the "methods" object of our animalSchema
  animalSchema.methods.findSimilarTypes = function(cb) {
    return this.model('Animal').find({ type: this.type }, cb);
  };

  var Animal = mongoose.model('Animal', animalSchema);
  var dog = new Animal({ type: 'dog' });

  dog.findSimilarTypes(function(err, dogs) {
   console.log(dogs); // woof
  });

```

* NB: don't use arrow functions for this purpose `this` will get messed up

## Static methods

```
// assign a function to the "statics" object of our animalSchema
  animalSchema.statics.findByName = function(name, cb) {
    return this.find({ name: new RegExp(name, 'i') }, cb);
  };

  var Animal = mongoose.model('Animal', animalSchema);
  Animal.findByName('fido', function(err, animals) {
    console.log(animals);
  });
```


## How to Use

### Connect

* Use `mongoose.connect(database, {useNewUrlParser: true})`
  - can get the database string from Mongo Atlas
