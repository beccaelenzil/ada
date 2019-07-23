# friendship_note.rb
def print_heart
    puts "   .:::.   .:::.   "
    puts "  :::::::.:::::::  "
    puts "  :::::::::::::::  "
    puts "  ':::::::::::::'  "
    puts "    ':::::::::'    "
    puts "      ':::::'      "
    puts "        ':'        "
  end

  # friendship_note.rb
def print_note(sender_name, receiver_name)
    puts "Dear #{receiver_name},"
    print_heart
  
    puts "You are a good friend to me,"
    print_heart
  
    puts "And I hope you have a wonderful day!"
    print_heart
  
    puts "Sincerely, #{sender_name}"
  end

  def print_note_loop(sender_name, receiver_name)
    messages = ["Dear #{receiver_name},", "You are a good friend to me,", "And I hope you have a wonderful day!"]
    (0..2).each do |i|
        puts messages[i]
        print_heart
    end
    puts "Sincerely, #{sender_name}"


  end

puts "Welcome to the friendship note app"

puts "What is your name?"
user_name = gets.chomp

puts "Who is your friend?"
friend_name = gets.chomp

puts "OK, here is your note"
print_note_loop(user_name, friend_name)

puts "Thank you for using the friendship note app"