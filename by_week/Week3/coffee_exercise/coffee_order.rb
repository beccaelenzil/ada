class CoffeeOrder
  def initialize(type, size, extra_shots, cold)
    @type = type
    @size = size
    @extra_shots = extra_shots
    @cold = cold
  end

  def calculate_price(tip_percentage)
    case @type
    when :drip
      price = 1.5
    when :latte
      price = 3.7
    when :cappuccino
      price = 3.2
    else
      puts "Invalid coffee type: #{type}"
      return
    end

    case @size
    when :tall
      # No change
    when :grande
      price *= 1.3
    when :venti
      price *= 1.6
    else
      puts "Invalid size: #{size}"
      return
    end

    price += @extra_shots * 0.5

    if @cold
      price += 1
    end

    price *= 1 + tip_percentage

    return price

  end

end