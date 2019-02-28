# Create a string which passes the following Regex:

#pattern = /.+\.(com)/
#the_string = 'h.com'
#puts pattern.match(the_string)

#pattern = /a{2,4}b{0,4}c{1,2}/
#strings = ['aaac', 'aabbcc', 'aaaabc']

#pattern = /^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$/
#strings = ['#000','#000000','#0000', 'aA0', 'aA00']
# # => valid, valid, not valid, valid, not valid]

#pattern = /[a-z][\.\?!]\s+[A-Z]\./
#strings = ['a.    A.', 'a.    a.', 'a.    AA.']
# => [valid, not valid, not valid]

pattern = (https?:)\/\/[a-z]+\.[a-z]+\.com

strings.each do |item|
  puts pattern.match(item) ? "#{item} is valid \n " : "#{item} is NOT valid \n "
end
