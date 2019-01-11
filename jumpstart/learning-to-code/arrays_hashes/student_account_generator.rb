
#initialize
n = 2
names = Array.new
id = Array.new(n,0)
email = Array.new
student_data = Array.new
id_num = 0

first_three = ['1st','2nd','3rd']

n.times do |i|
  if i < 3
    count = first_three[i]
  else
    count = (i+1).to_s + "th"
  end

  #name
  print "Enter the #{count} first name: "
  first_name = gets.chomp.upcase
  print "Enter the #{count} last name: "
  last_name = gets.chomp.upcase
  name = first_name + " " + last_name
  names.push(name)

  #id

  while id.include? id_num
    id_num = rand(111111..999999)
    id_string = id_num.to_s
  end
  id[i] = id_num

  #e-mail
  email_address = first_name[0]+last_name+id_string.slice(3,6)+"@adasdevelopersacademy.org"
  email.push(email_address)


  # put data in a hash
  student = Hash.new
  student["Name"] = name
  student["ID"] = id_num
  student["email"] = email_address

  student_data.push(student)
end

#print with arrays
names.length.times do |i|
  puts "Name: #{names[i]}, ID: #{id[i]}, e-mail: #{email[i]}"
end

print " "

#print with hash
student_data.each do |student|
  puts "Name: #{student["Name"]}, ID: #{student["ID"]}, e-mail: #{student["email"]}"
end
