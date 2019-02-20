#--map and collect

# using `each`
results = []
[1,2,3].each { |n| results << n ** 2 }
results # => [1, 4, 9]

# using `map` or `collect`
results = [1,2,3].map { |n| n ** 2 }
results # => [1, 4, 9]

#--sort and sort by

[1, 3, 6, 3, 2, 346, 6, 7].sort # => [1, 2, 3, 3, 6, 6, 7, 346]

Product.all.sort_by do |product|
  product.margins_average_year_over_year(adjust_for_inflation: true)
end
