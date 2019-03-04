# enum-hash.rb
scores = {
  jeremy: [10, 20, 34, 55, 86],
  taylor:   [11, 27, 95, 45, 33],
  raquel: [15, 54, 23, 22, 57],
  rosa:   [5, 3, 7, 77, 34]
}

all_scores = []
names = []
averages = []
differences = []
scores.each do |key, value|
  all_scores.push(*value)
  names.push(key)
  averages.push(value.sum/value.length)
  differences.push(value.max - value.min)
end

max_score = all_scores.max
puts("max score: #{max_score}")

i = averages.rindex(averages.max)
puts("person with max average: #{names[i]}")

j = differences.rindex(differences.max)
puts("person with max difference: #{names[j]}")
puts("the difference is: #{differences.max}")
