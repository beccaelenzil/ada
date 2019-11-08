//printInputs
const printInputs = function(){
  console.log("The value of a is: ${a}")
  console.log("The value of b is: ${b}")
}

//addition
const addNums = function(a,b){printInputs()
  return a+b
}
const sum = addNums(3,5)
console.log(sum)

//subtraction
const subtractNums = function(a,b){
  printInputs()
  return a-b
}
const difference = subtractNums(3,5)
console.log(difference)

//multiplication
const multiplyNums = function(a,b){
  printInputs()
  return a*b
}
const product = multiplyNums(3,5)
console.log(product)

