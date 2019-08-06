require 'awesome_print'

def user_interface()
    puts "Welcome to the calculator program! Which operator would you like to use."
    puts "1. add(+)"
    puts "2. subtract(-)"
    puts "3. multiply(*)"
    puts "4. divide(/)"
    puts "5. exponent(**)"

    operations = ["1", "add", "+", "2", "subtract", "-", "3", "multiply", "*", "4", "divide", "/", "5", "exponent", "**"]

    operation = [nil]
    until operations.include?(operation)
        puts "Please choose one operator by entering the number, name, or operation symbol."
        operation = gets.chomp
    end

    
    numbers = []
    
    (1..2).each do |i|
        number = [nil]
        while number == [nil]
            print "Enter number #{i}: "
            number = gets.chomp
            begin
               number = Float(number)
               numbers << number
            rescue
                puts "You must enter a numeric value"
                number = [nil]
            end
        end
    end

    return operation, numbers[0].to_f, numbers[1].to_f
end

def calculate(operation, number1, number2)
    case operation
        when "1", "add", "+"
            puts "#{number1} + #{number2} = #{number1+number2}"
        when "2", "subtract", "-"
            puts "#{number1} - #{number2} = #{number1-number2}"
        when "3", "multipy", "*"
            puts "#{number1} * #{number2} = #{number1*number2}"
        when "4", "divide", "/"
            if number2 == 0
                puts "undefined"
            else
                puts "#{number1} / #{number2} = #{number1/number2}"
            end
        when "5", "exponent", "**"
            puts "#{number1}^#{number2} = #{number1**number2}"
        else
            puts "Cannot Compute"
    end
end

def run()
    operation, number1, number2 = user_interface()
    puts "..."
    puts "calculating"
    puts "..."
    sleep(2)
    calculate(operation, number1, number2)
end