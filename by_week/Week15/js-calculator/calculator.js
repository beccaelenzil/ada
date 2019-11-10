'use strict';
const prompt = require('prompt');

const printEq = function(a,b,operation,solution){
  console.log(`${a} ${operation} ${b} = ${solution}`)
}

const isNumber = function(num_string){
  if (Number.isInteger(parseInt(num_string)) === true){
    return true
  }else{
    return false
  }
}

const calculator = function(error, result) {
  console.log(`result: ${result['operation']}`)
  const operation = result.operation
  const num1 = parseFloat(result.num1)
  const num2 = parseFloat(result.num2)
  let solution;
  
  switch(operation){
    case '+' || 'add':
      solution = num1 + num2;
      break;
    case 'add':
        solution = num1 + num2;
        break;
    case '-' || 'subtract':
      solution = num1 - num2;
      break;
    case '*' || 'multiply':
      solution = num1 * num2;
      break;
    case '/' || 'divide':
      solution = num1 / num2;
      break;
    default:
      console.log("We don't support that operation")
  }  
  printEq(num1, num2, operation, solution)
  return solution
}  
//https://www.npmjs.com/package/prompt
let schema = {
  properties: {
    num1: {
      pattern: /[-.]?\d+\.?\d+/,
      message: 'Must enter a number'
    },
    num2: {
      pattern: /[-.]?\d*\.?\d*/,
      message: 'Must enter a number'
    },
    operation: {    }
  }
}

//start the prompt
prompt.start();

//collect two numbers (num1 and num2) and an operation
//then call the function `calculator` with the results
console.log('Enter two numbers and one of the following operations: add (+), subtract (-), multiply (*), divide (/)')


prompt.get(schema, calculator);

