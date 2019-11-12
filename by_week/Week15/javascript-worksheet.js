const hello = () => console.log('hello!')
hello()

// def say_num(number)
//    puts 'Your number is #{number}.'
// end

const sayNum = (number) => console.log(`Your number is ${number}`)
sayNum(5)

/*
def larger_num(first, second)
  if first >= second
    first
  elsif second > first
    second
  end
end
*/

const largerNum = (first, second) => {
  if (first >= second){
    return first
  }else{
    return second
  }
}

console.log(largerNum(5,7))
console.log(largerNum(7,5))

/*
def output(items)
  items.each do |item|
    puts item
  end
end
*/

const output = (items) => {
  items.forEach((item) => {
    console.log(item);
  });
}

output([1,2,3])

const zombies = function() {
  return "We like to eat people";
};

console.log(zombies())

console.log(function() {
  return "Hey hey hey";
}());

const blabbermouth = function() { };
console.log(blabbermouth.name);