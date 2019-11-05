const express = require('express');
const app = express();
const router = express.Router();

const path = __dirname + '/views/';
const port = 8000;

router.use(function (req,res,next) {
  console.log('/' + req.method);
  next();
});

router.get('/', function(req,res){
  res.sendFile(path + 'index.html');
});

router.get('/about', function(req,res){
  res.sendFile(path + 'about.html');
});

router.get('/cart', function(req,res){
  res.sendFile(path + 'cart.html');
});

router.get('/gallery', function(req,res){
  res.sendFile(path + 'gallery.html');
});

router.get('/wishlist', function(req,res){
  res.sendFile(path + 'wishlist.html');
});

app.use(express.static(path));
app.use('/', router);

app.listen(port, function () {
  console.log('app listening on port 8000!')
})
