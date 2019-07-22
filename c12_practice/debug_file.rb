# my_efficient_and_clever_program.rb

# definitely always sums the two numbers you give it.
def cool_sum_func(a, b)
    puts "a = #{a}"
    puts "b = #{b}"
  
    #completely necessary if-else
    if a % 2 == 0
      return add_them(a, b)
    else
      b += 2
      return subtract_them(a, b)
    end
  end
  
  #adds two numbers
  def add_them(a, b)
    return a + b
  end
  
  #subtracts b from a
  def subtract_them(a, b)
    return a - b
  end
  
  
  left_num = 5
  right_num = 3
  
  sum = cool_sum_func(left_num, right_num)
  
  puts sum