const axios = require('axios');
const url = 'http://api.open-notify.org/iss-pass.json'

const queryParams = {
  params: {
    lat: 47.6062,
    lon: 122.3321
  }
}

axios.get(url, queryParams)
  .then((response)=>{
    const times = response.data.response
    console.log(times)
    for (let i in times){
      console.log(`risetime: ${Date(times[i].risetime*1000)}`)
    }
  })
  .catch((error)=>{
    console.log(error)
  })

  