/*const doMath = function(operation) {
  for (let i = 0; i < 10; i += 1) {
    const result = operation(i);
    console.log(`${i}: ${result}`);
  }
};

const doubleNum = function(num) {
  return num * 2;
};

doMath(doubleNum);


const doMath = function (operation) {
  for (let i = 0; i < 10; i += 1) {
    const result = operation(i);
    console.log(`${i}: ${result}`);
  }
};

doMath(function(num) {
  return num ** 3;
});

doMath(function(num) {
  return `$${num.toFixed(2)}`;
});

doMath(function(num) {
  return `$${(1*10**6*num).toFixed(2)} belongs to Devin`;
});



const list = ['Alice', 'Cooper', 'Maria', 'Alyokhina', 'Alicia', 'Keys'];

list.forEach( function(element) {
  if (element == 'Cooper') {
    console.log('Found it!');
    return true;
  } else{
    console.log(`${element} is not Cooper`);
  }
});
*/

const sequence = [ 2, 5, 8, 11, 14 ]
sequence.forEach( function(num) {
  console.log(2*num+7);
});

const animals =  ['puppies', 'meerkats', 'red pandas', 'cats']

animals.forEach( function(animal) {
  console.log(`I am an amazing ${animal.slice(0,animal.length-1)}`);
})

let longest = ''
animals.forEach( function(animal) {
  if (animal.length > longest.length) {
    longest = animal
  }
})
console.log(`The longest animal name is ${longest.slice(0,longest.length-1)}`)
