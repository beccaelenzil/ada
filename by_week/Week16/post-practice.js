const axios = require('axios');

const tripData = {
  name: 'Dee\'s Chill Trip to Chicago',
  continent: 'North America',
  about: 'A tour around good architecture and hot dogs.',
  category: 'casual',
  weeks: 1,
  cost: 180,
};

axios.post('https://trektravel.herokuapp.com/trips', tripData)
  .then((response) => {
    console.log('RESPONSE:', response);
    console.log('RESPONSE DATA:', response.data);
    console.log('plums!');
  })
  .catch((error) => {
    //console.log('ERROR:', error);
    console.log('ERROR RESPONSE:', error.response.data);
    console.log('mangos!');
  })
  .finally(() => {
    console.log('finally done!');
  });