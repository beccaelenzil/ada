# Program Requirements
Start by copying and pasting the program requirements into the start of script. These will be the basis for writing pseudocode to outline the program. You can include these as a block comment with ```=begin``` and ```=end```  at the start and beginning.

```ruby
=begin
You are assigned the task of creating a program that tracks flowers for a floral boutique. The florists want a program that will keep track of their extensive assortment of flowers and automatically order any that have low stock. Below is a sample of the information that needs to be tracked by this program.

The program should also:
* Access all attributes
* Sell a flower
	- Update quantity available
	- Selling should update the total sold
* Restock a flower
	- Flowers can only be ordered in the quantities of their bundles. Reorder as much as possible before the quantity hits the max stock.
	- EX: If there are only 15 daisy's in stock, we want to restock to 300 as closely as possible, without going over. So, we need to order no more than 285 (300 - 15), but can only order in bundles of 50. How many times does 50 go into 285 (285 / 50)? 5! So our program needs to order 5 bundles of daisy's, which is 250 (5 x 50). That will update the quantity available to 265.
=end

```

# Outline the Program

The class definition will go in between ```class Flower``` and ```end```, so let's start there.

Now add sudo code to outline the program.

```ruby
class Flower

# initialize the instance variables 
# create a reader method for each of the instance variables.
# create sell flower method that takes the number of flowers you sell as an argument, and updates the quantity available
# - Consider how you should deal with sell values that are greater than the quantity availble

# create a restock method that restocks as close to the max stock as possible
# - you can only restock in bundle quantities
# - consider how you should deal with a call to restock when you are already as close to the max stock value as possible

end
```

It will be useful to think about edge cases now, but it's also ok to dig into the programming of the initialize method and reader method, and wait to think about more about the methods. 

# Tests

Let's copy and paste the starter tests provided so we can test as we go. These tests are not comprehensive, and we will also want to include tests that test the edge cases described above

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

puts rose.name
```

# Initialize Method

Given that there are several attributes to we need to write with the initialize method, it will be helpful to pass in these arguments as a dictionary when we instantiate a new flower. Let's design our Initialize method with that in mind.

```ruby
class Flower
	def initialize(flower_hash)
	    @name = flower_hash[:name]
	    @size = flower_hash[:size]
	    @color = flower_hash[:color]
	    @quantity_available = flower_hash[:quantity_available]
	    @bundles = flower_hash[:bundles]
	    @max_stock = flower_hash[:max_stock]
	    @total_sold = flower_hash[:total_sold]
	end
# create a reader method for each of the instance variables.
# create sell flower method that takes the number of flowers you sell as an argument, and updates the quantity available
# - Consider how you should deal with sell values that are greater than the quantity availble

# create a restock method that restocks as close to the max stock as possible
# - you can only restock in bundle quantities
# - consider how you should deal with a call to restock when you are already as close to the max stock value as possible

end
```

Let's test our initialize method. 

Great -- no errors. But how do we now the attributes are stored correctly? Let's try to access them. 

Oh! We didn't write a reader method. Again, since we have 7 attributes, let's use a short cut.

```ruby
class Flower
	# generate reader methods for all instance variables
	attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

	# Constructor! This will be called automatically when you invoke Flower.new
	def initialize(flower_hash)
	    @name = flower_hash[:name]
	    @size = flower_hash[:size]
	    @color = flower_hash[:color]
	    @quantity_available = flower_hash[:quantity_available]
	    @bundles = flower_hash[:bundles]
	    @max_stock = flower_hash[:max_stock]
	    @total_sold = flower_hash[:total_sold]
	end
	
# create sell flower method that takes the number of flowers you sell as an argument, and updates the quantity available
# - Consider how you should deal with sell values that are greater than the quantity availble

# create a restock method that restocks as close to the max stock as possible
# - you can only restock in bundle quantities
# - consider how you should deal with a call to restock when you are already as close to the max stock value as possible

end
```
## Test reader

```ruby
puts lily.name
puts lily.size
puts lily.color
puts lily.quantity_available
puts lily.bundles
puts lily.max_stock
puts lily.total_sold
```

# Method: sell

What should it do if we try to sell more than we have?
- sell 0 and tell the user that they don't have enough
- sell the remaining stock, and tell the user they don't have enough
- remember the shorthand for updating a variable
- Consider, does this method need to return anything?
- Consider the order of updating quantity_available, and printing to the user

```ruby
class Flower
	# generate reader methods for all instance variables
	attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

	# Constructor! This will be called automatically when you invoke Flower.new
	def initialize(flower_hash)
	    @name = flower_hash[:name]
	    @size = flower_hash[:size]
	    @color = flower_hash[:color]
	    @quantity_available = flower_hash[:quantity_available]
	    @bundles = flower_hash[:bundles]
	    @max_stock = flower_hash[:max_stock]
	    @total_sold = flower_hash[:total_sold]
	end
	
	# sell some number (num) of flowers
  def sell(num)
	  if num <= @quantity_available
	  	# update quantity_available and total sold
	  	#@quantatiy_available = @quantatiy_available - num
	  	@quantatiy_available -= num
	  	@total_sold += num
	  else
	  	# sell the remaining and tell user they don't have enough
	  	puts "You only have #{@quantatiy_available}. We sold them all"
	  	@quantatiy_available = 0
	  end
  end
	
# create sell flower method that takes the number of flowers you sell as an argument, and updates the quantity available
# - Consider how you should deal with sell values that are greater than the quantity availble

# create a restock method that restocks as close to the max stock as possible
# - you can only restock in bundle quantities
# - consider how you should deal with a call to restock when you are already as close to the max stock value as possible

end
```

## test sell
```ruby

# sell method
# sell more than quantity available
puts "--sell 500--"
lily.sell(500)
puts "quantitye available: #{lily.quantity_available}"
# sell an available quantity
puts "--sell 50--"
lily.sell(50)
puts "quantitye available: #{lily.quantity_available}"

```


# Method: restock

- Find the difference between the ```max_stock``` and ```quantatiy_availble```
- Check if this different is greater than a ```bundle```
- If it is, 
	- divide the difference by ```bundles``` (int division)
	- Mutliply this value (number of bundles) by ```bundles```
	- add this value to quantity_available
- If not,
	- tell the user they can't order anymore because they already have close to the max stock

```ruby

class Flower
	# generate reader methods for all instance variables
	attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

	# Constructor! This will be called automatically when you invoke Flower.new
	def initialize(flower_hash)
	    @name = flower_hash[:name]
	    @size = flower_hash[:size]
	    @color = flower_hash[:color]
	    @quantity_available = flower_hash[:quantity_available]
	    @bundles = flower_hash[:bundles]
	    @max_stock = flower_hash[:max_stock]
	    @total_sold = flower_hash[:total_sold]
	end
	
	# sell some number (num) of flowers
  def sell(num)
	  if num <= @quantity_available
	  	# update quantity_available and total sold
	  	#@quantatiy_available = @quantatiy_available - num
	  	@quantatiy_available -= num
	  	@total_sold += num
	  else
	  	# sell the remaining and tell user they don't have enough
	  	puts "You only have #{@quantatiy_available}. We sold them all"
	  	@quantatiy_available = 0
	  end
  end
	

	# create a restock method that restocks as close to the max stock as possible
	def restock
    diff = @max_stock - @quantity_available
    if diff >= @bundles
      num_bundles = diff/(@bundles)
      num_flowers = num_bundles * @bundles
      @quantity_available += num_flowers
    else
      puts "It's not time to restock yet. "
      puts "You have #{@quantity_available}, and the max stock is #{@max_stock}"
      puts "You need to wait until you can order a bundle of #{@bundles}"
    end
  end


end

```

## test restock

```ruby

#restock method
puts "--restock--"
lily.restock
puts "quantitye available: #{lily.quantity_available}"

#restock when not time to restock
puts "--restock--"
lily.restock

```

# The whole class and tests
```ruby
class Flower
  # generate reader methods for all instance variables
  attr_accessor :name, :size, :color, :quantity_available, :bundles, :max_stock, :total_sold

  # Constructor! This will be called automatically when you invoke Flower.new
  # -- use keyword arguements
  def initialize(flower_hash)
    @name = flower_hash[:name]
    @size = flower_hash[:size]
    @color = flower_hash[:color]
    @quantity_available = flower_hash[:quantity_available]
    @bundles = flower_hash[:bundles]
    @max_stock = flower_hash[:max_stock]
    @total_sold = flower_hash[:total_sold]
  end

  # sell some number (num) of flowers
  def sell(num)
    if num <= @quantity_available
      @total_sold += num
      @quantity_available -= num
    else
      puts "You don't have enough flowers to sell that many."
    end
  end

  # restock up to max_stock
  def restock
    diff = @max_stock - @quantity_available
    if diff >= @bundles
      num_bundles = diff/(@bundles)
      num_flowers = num_bundles * @bundles
      @quantity_available += num_flowers
    else
      puts "It's not time to restock yet. "
      puts "You have #{@quantity_available}, and the max stock is #{@max_stock}"
      puts "You need to wait until you can order a bundle of #{@bundles}"
    end
  end
end


#--tests--
#attributes
puts "--Insantiate new Flower and view instance attributes--"

#lily = Flower.new("Lily","medium","white", 91, 24, 120, 9200)
lily = Flower.new({:name=>"Lily",:size=>"medium",:color=>"white", :quantity_available=>91, :bundles=>24, :max_stock=>120, :total_sold=>9200})
puts lily.name
puts lily.size
puts lily.color
puts lily.quantity_available
puts lily.bundles
puts lily.max_stock
puts lily.total_sold

# sell method
# sell more than quantity available
puts "--sell 500--"
lily.sell(500)
puts "quantitye available: #{lily.quantity_available}"
# sell an available quantity
puts "--sell 50--"
lily.sell(50)
puts "quantitye available: #{lily.quantity_available}"

#restock method
puts "--restock--"
lily.restock
puts "quantitye available: #{lily.quantity_available}"

#restock when not time to restock
puts "--restock--"
lily.restock


```
# Enhancements?

What other methods might you write?

* Summary
* Price information - total revenue
