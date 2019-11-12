 
/*
person_age = 55
ada_age = 2

if person_age < ada_age
   print "This person is younger"
elsif ada_age < person_age
   print "Ada is younger"
else
   print "They’re the same!"
end
*/


/*
x = 7
y = 7

if x > y || x == y
   if x > y
      print "x is bigger"
   else
      print "x = y"
   end
else
   print "y is bigger"
end
 


10.times do |i|
  puts i * i
end


let i = 0
while (i < 10){
  console.log(i*i)
  i++
}
 


total = 0

(1..3).each do |i|
  total = total + i
end

puts total
*/
let total = 0;

[1,2,3].forEach((i)=>{
  total += i;
})

console.log(total)

/*
i = 0

while i < 3
  puts "hi"
  i = i + 1
end

puts "bye"
 

fruits = ["banana", "apple", "kiwi"]
fruits.each do |fruit|
  puts "I love #{fruit}!"
end
 

total = 0
values = [4, 6, 2, 8, 11]

values.each do |value|
    total = total + value
end

puts total
 

values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  if value == 10
    puts "Special case!"
  else
    puts "Regular values like #{value}"
  end
end
*/