const Ascii = require('ascii');
const vincent = new Ascii('vincent-van-gogh.png');

vincent.convert(function (err, data) {
  if (err) {
    throw err;
  }

  console.log(data);
});
