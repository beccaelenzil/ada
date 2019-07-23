# Part 1

#irb -r ./data_transformation.rb

# Iterating through arrays

# 1. You are given an array of String objects, stored in a variable called my_strings. You want to use this array to create a new array of Integer objects, which represents the length of each string. We want to store the resulting array in a variable called string_lengths.

def string_length_func(my_strings)
    string_lengths = []
    my_strings.each do |my_string|
        string_lengths << my_string.length
    end
    return string_lengths
end

# 2. You are given an array of Integer objects, stored in a variable called my_nums. You want to use this array to create a new array which contains String objects, which say "even" or "odd" depending on the Integer in the original array.
def even_odd_func(my_nums)
    even_odd = []
    my_nums.each do |my_num|
        if my_num % 2 == 0
            even_odd << "even"
        else
            even_odd << "odd"
        end
    end
    return even_odd
end

# 3. You are given an array of String objects, stored in a variable called my_strings. You want to create a new array which only contains the strings from the original array that have a length that is smaller than 4.
def less_than_four_func(my_strings)
    less_than_four = []
    my_strings.each do |my_string|
        if my_string.length < 4
            less_than_four << my_string
        end
    end
    return less_than_four
end

# 4. You are given an array of String objects, stored in a variable called my_strings. You want to use this array to return the String that has the longest length. (In a tie, it should return the first String with the longest length)

def longest_length_func(my_strings)
    longest_length = ""
    my_strings.each do |my_string|
        if my_string.length > longest_length.length
            longest_length = my_string
        end
    end
    return longest_length
end
# Transforming Arrays into Hashes

# 1. Given this array of String names, return an array of Hashes. Each Hash should have the keys name and id, which will represent their unique identifier in the form of an integer. The ids can start at 1 and then go up by one.

names = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']

# => [{:name=>"Grumpy", :id=>1},
# {:name=>"Happy", :id=>2},
# {:name=>"Sleepy", :id=>3},
# {:name=>"Bashful", :id=>4},
# {:name=>"Sneezy", :id=>5},
# {:name=>"Dopey", :id=>6},
# {:name=>"Doc", :id=>7}]

#2. Given this array of String names and this array of String specialties, return an array of Hashes. Each Hash should have the keys name, specialty, and id, which will represent their unique identifier in the form of an integer. The ids can start at 1 and then go up by one.

names = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']
specialties = ['grump', 'smile', 'nap', 'blush', 'sneeze', 'goof', 'contemplate']

# => [{:name=>"Grumpy", :specialty=>"grump", :id=>1},
# {:name=>"Happy", :specialty=>"smile", :id=>2},
# {:name=>"Sleepy", :specialty=>"nap", :id=>3},
# {:name=>"Bashful", :specialty=>"blush", :id=>4},
# {:name=>"Sneezy", :specialty=>"sneeze", :id=>5},
# {:name=>"Dopey", :specialty=>"goof", :id=>6},
# {:name=>"Doc", :specialty=>"contemplate", :id=>7}]

# 3. Given these two arrays of strings, write code that returns an array of arrays. Each element in the larger array should have two elements: the first element is the name, and the second element is the specialty.
names = ['Grumpy', 'Happy', 'Sleepy', 'Bashful', 'Sneezy', 'Dopey', 'Doc']
specialties = ['grump', 'smile', 'nap', 'blush', 'sneeze', 'goof', 'contemplate']

# => [["Grumpy", "grump"], ["Happy", "smile"], ["Sleepy", "nap"], ["Bashful", "blush"], ["Sneezy", "sneeze"], ["Do

# More Transformations

# 4. Given this array of hashes, iterate through the array and return an array of strings. Each string should be in the following format: Grumpy's specialty is to GRUMP, where Grumpy is replaced with each name and GRUMP is the specialty in capital letters.

characters = [{:name=>"Grumpy", :specialty=>"grump", :id=>1},
 {:name=>"Happy", :specialty=>"smile", :id=>2},
 {:name=>"Sleepy", :specialty=>"nap", :id=>3},
 {:name=>"Bashful", :specialty=>"blush", :id=>4},
 {:name=>"Sneezy", :specialty=>"sneeze", :id=>5},
 {:name=>"Dopey", :specialty=>"goof", :id=>6},
 {:name=>"Doc", :specialty=>"contemplate", :id=>7}]

# => ["Grumpy's specialty is to GRUMP",
# "Happy's specialty is to SMILE",
# "Sleepy's specialty is to NAP",
# "Bashful's specialty is to BLUSH",
# "Sneezy's specialty is to SNEEZE",
# "Dopey's specialty is to GOOF",
# "Doc's specialty is to CONTEMPLATE"]