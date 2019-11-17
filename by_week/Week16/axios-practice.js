const axios = require('axios');

/*axios.get('https://dog.ceo/api/breeds/image/random/')
  .then((response) => {
    console.log("success!")
  })
  .catch((error) => {
    console.log("failure!")
  });


//axios.get('https://dog.ceo/api/breeds/image/random/')
axios.get('https://dog.ceo/api/breeds/image/notarealendpoint/')
  .then((response) => {
    //console.log('The value of response is:', response);

    console.log('The value of status inside of response is:', response.status);

    console.log('The date inside header inside response is:', response.headers.date);

    console.log('The data given back by the API response is:', response.data);

    console.log('The random dog image url is:', response.data.message);

  })
  .catch((error) => {
    console.log('The value of error is:', error);
    console.log('The value of status inside of response is:', error.response.status);


    console.log('The data given back by the API response is:', error.response.data);
  });

  */

 console.log()
 axios.get('http://api.open-notify.org/iss-pass.json', {
     params: {
       lat: 47.6062,
       lon: 122.3321,
     }
   })
   .then((response) => {
     response.data.response.forEach((passes) => {
       const risetime = passes.risetime;
       const date = new Date(risetime * 1000);
       console.log(date.toString());
     });    
   })
   .catch((error) => {
     console.log('error!');
   });
 
 console.log('I broke free on a Saturday morning');
 console.log('I put the pedal to the floor');
 console.log('Headed north on Mills Avenue');
 console.log('And listened to the engine roar');