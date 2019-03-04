=begin

# phone_numbers.txt
(206) 555-1234
425-555-9999
406.555.1818
+1 206 555 8888
4255558872

=end

pattern = /^.*(\d{3}).*(\d{3}).*(\d{4})$/
phones_numbers = ['(206) 555-1234','425-555-9999','406.555.1818','+1 206 555 8888','4255558872']
new_phone_numbers = []

phones_numbers.each do |number|
    results = pattern.match(number)
    new_number = "(#{results[1]}) #{results[2]}-#{results[3]}"
    new_phone_numbers.push(new_number)
end

puts new_phone_numbers

