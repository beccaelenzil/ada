# Hello!

Hi Everyone!

In this video I am going to go over the solution for the Flower exercise from the ruby fundamentals chapter.

In this video I'll focus on writing the two required methods for the Flower class: **sell** and **restock**

--

# Summary of what's written

I'll get started by explaining what I have already written. 

Notice that I include a block comment at the top that includes the requirements of the assignment. Before we get started, make sure you've read through the requirements on the assignment page. 

Now I'll explain **initialize** method and **attribute accessor** method that I have already written. 

```ruby
class Flower
  # reader
  attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

  # initialize method
  def initialize(flower_dict)
    @name = flower_dict[:name]
    @size = flower_dict[:size]
    @color = flower_dict[:color]
    @quantity_available = flower_dict[:quantity_available]
    @bundles = flower_dict[:bundles]
    @max_stock = flower_dict[:max_stock]
    @total_sold = flower_dict[:total_sold]
  end
end
```

These methods both have a special meaning to ruby.  When we create an instance of the Flower class, **initialize** is called with the arguments that we pass to the new method. Our initialize() method takes a dictionary -- or in ruby, a hash, as the argument, and copies entries from the dictionary into instance variables.variables. 

**attr_accessor** is also a special ruby method that allows you to both read -- or get -- and write -- or set -- the instance variables that you specify. 

Now that we understand what's going on in the code, let's run a few tests to be sure that we can read and write all the attributes of an instance of the Flower class.

We'll do that with this bit of code. 

```ruby
rose = Flower.new({
  name: "rose",
  size: "medium",
  color: "red",
  quantity_available: 144,
  bundles: 24,
  max_stock: 350,
  total_sold: 15042
  })

puts "-----reader tests-----"
puts "name: #{rose.name}"
puts "size: #{rose.size}"
puts "color: #{rose.color}"
puts "quantity_available: #{rose.quantity_available}"
puts "bundles: #{rose.bundles}"
puts "max_stock: #{rose.max_stock}"
puts "total_sold: #{rose.total_sold}"
```

First we instantiate a new Flower -- a rose, with the 7 attributes from the table. The attributes are stored in a dictionary, or hash. 

Then we print all the attributes. 

Let's go to the terminal and run our script.

We'll type **ruby flower.rb**

**---2:40---**

 Great, we instantiated a Flower and read all the attributes. Now we can move on to writing the sell method. 

--

# sell method

**By refering back to the exercise requirements and the example tests, we know that our sell method should take one argument -- the number of flowers you are selling -- let's call this variable **num** and start by writing our signature for the method**

```ruby
def sell(num)

end
```
Our sell method needs to update the **quantity_available** and the **total_sold.** If the number of flowers being sold is less than or equal to the quantity available, this is straight forward algorithm -- num is added to the **total_sold** and subtracted from the **quantity_available** 

However, if num is greater than the **quantity__available** there is a decision to be made. We can't have negative flowers, so if we have 150 flowers available, we can't sell anymore than 150. Consider how you'd like to handle this situation with code.

**PAUSE**

There are two main options.

You could tell the user that there are not **num** flowers available with a print statement, and sell no flowers

or

You could tell the user that there are not **num** flowers available and sell all the remaining flowers so that quantity_available is equation to 0.

I'll choose to program the second option. Let's write some pseudocode to outline our algorithm

```
# sell method
# if num <= quantity_available, updated total_sold and quantity_available by adding and subtracting n, respectively
# elsif num > quantity_available, tell the user, update total_sold by adding quantity_available and set quantity available to 0.
```

**--8:00--**

Now let's code this. 

Notice the use of the **-=** and **+=** operator to update the instance variables.

```ruby
def sell(num)
    if num <= @quantity_available
      @quantity_available -= num
      @total_sold += num
      flowers_sold = num
    elsif
      puts "You don't have #{num} flowers. You only have #{@quantity_available}. We will sell them"
      flowers_sold = @quantity_available
      @total_sold += @quantity_available
      @quantity_available = 0
    end
    return flowers_sold
end
```

...

Finally, I'll add one more condition if num < 0.

```ruby
elsif num < 0
	puts "You can't sell negative flowers"
end

```

**ADD TO CODE**


Finally, while the requirements don't specify a return value, it would be useful to return the number of flowers sold. I'll let you implement this portion.

PAUSE

...

Great. Now let's test this code. First we will test the case where n <= quantity_available. And then we will test the case where n < quantity_available. We will print the quantity_available and the total_sold before and after each call to **sell.**

```ruby
puts "-----sell method tests-----"
puts "quantity_available: #{rose.quantity_available}"
puts "total_sold: #{rose.total_sold}"
puts "Sell 5"
rose.sell(5)
puts "quantity_available: #{rose.quantity_available}"
puts "total_sold: #{rose.total_sold}"
puts "Try to sell 200"
rose.sell(200)
puts "quantity_available: #{rose.quantity_available}"
puts "total_sold: #{rose.total_sold}"
```

Looks good.

--

**--11:30--**

#restock method

Now for the restock method.

Let's remind ourself what the restock method should do. 

Reorder as much as possible before the quantity hits the max stock.
Flowers can only be ordered in the quantities of their bundles.

Does the restock method take any arguments?

PAUSE

no.

Let's write the signature for this method. Notice that if the method does not take any arguments, you do not need parenthesis.

Now Let's look at the example and rewrite the values as variables. We will use this pseudocode to outline our program. 

You can pause the video while you read the daisy example at the top of the script.

PAUSE

```
If there are only 15 daisy's in stock, we want to restock to 300 as 
closely as possible, without going over. 
So, we need to order no more than 285 (300 - 15), but can only order in bundles of 50.
  How many times does 50 go into 285 (285 / 50)? 5!
  So our program needs to order 5 bundles of daisy's, which is 250 (5 x 50).
  That will update the quantity available to 265.ine our method.
```

``` 
# find the difference between the max_stock and quantity_available
# integer divide this difference by the number in a bundle (@bundles) to # get number_of_bundlles
# multiply number_of_bundles by bundles to get the number of flowers_to_order
# add flowers_to_order to @quantity available
```

Remember you only want to restock if the difference between max_stock and quantity_available is greater than or equal to the number of flowers in a bundle. Let's see how we can make sure that is the case with code. Let's turn our pseudo code into code. 

```ruby
def restock
    # find difference between quantity_available and max_stock
    difference = @max_stock - @quantity_available
    # determine the number of bundles
     num_bundles = difference / @bundles
```

Note that ruby performs integer division. since both difference and @bundles are integers. If difference < @bundles, this division will produce 0 for num_bundles.

```
    # determine the number of flowers
      num_flowers = @bundles * num_bundles
      @quantity_available += num_flowers
    else
      puts "You have too many flowers to restock at this time"
    end
  end
```

**--17:30--**

Now let's test our method.

First we'll print the **max_stock** and **quantity_available** for reference. We'll restock 2 times. The first time we should be able to restock because in our previous test we were left with 0 quantity_available -- 

With the second call to restock, we should not be able to restock. We can use a loop to call restock twice and include a couple of the same print statements. We should see no change in the quantity available after the second call to restock.

```ruby

puts "-----restock method tests-----"
puts "max_stock: #{rose.max_stock}"
puts "quantity_available: #{rose.quantity_available}"
2.times do
	puts "call restock"
	rose.restock
	puts "quantity_available: #{rose.quantity_available}"
end
```

Looks good.

--

# Enhancements

That's it for all the required components.

Now you could consider adding enhancements.

One enhancement that come to my for me are a method that prints a description of the flower including it's **name, color, size, quantity_available** and **total_sold**

What do you think?

--

I hope you found that helpful.

I'll see you next time!
