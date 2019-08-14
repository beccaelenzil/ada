num = rand(11)
if num == 10
  puts "It's 10"
else
  puts "It's not 10!"
end

# using ternary

# comparison ? positive result : negative result

puts num == 10 ? "It's 10!" : "It's not 10!"

# no ternary
def avg_score(scores)
  if scores.length > 0
    scores.sum / scores.length
  else
    0
  end  
end

def avg_score(scores)
  # condition ? eval_true : eval_false
  scores.length > 0 ? scores.sum / scores.length : 0
end


if my_var
  do_this_method(my_var)
end

# this is called a "guard clause"
return "" unless num > 0

def do_something(num)

  #guard clause
  unless num > 0
    return " "
  end

end

penalty.amount = 5 unless resume.is_markdown?

unless resume.is_markdown?
  penalty.amount = 5
end