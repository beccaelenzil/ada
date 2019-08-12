def divide_check(order_items, number_of_people)
  unless number_of_people.respond_to?(:greater) && number_of_people > 0 
    raise ArgumentError, 'You must provide a postive numeric argument to this method.'
  end

  total = order_items.sum.to_f

  return total / number_of_people
end


def place_order
  order = [13.5, 14.0, 15.0, 3]
  people = 3

  puts "Your order will cost #{divide_check(people, order)} per person"
end


place_order