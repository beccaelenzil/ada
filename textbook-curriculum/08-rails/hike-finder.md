# Hike Finder: Working With a Single Model

## Database Setup


1. How would you create a database table including the above columns?
    - What command would you use to generate the migration?

rails generate model Hike id:integer name:string length_miles:float elevation_gain_feet:integer max_elevation_feet:integer rating:integer

    - Do you need to include the `id`, `created_at` and `updated_at` fields in the migration?

no

    - Do you need to make any other changes to the generated migration?

no

    - How do you run the migration?

    rails db:migrate

1. How would you add a new column of type `string` called `best_month`?
    - How do you create a new migration?
rails generate migration add_best_month_to_hikes

    - What goes in the migration file?
    
 def change
    # Rails loves both symbols and implicit parens
    add_column :hikes, :best_month, :string
  end

    - What commands do you need to run?
    rails db:migrate

### Reading Data

1. How would you store the list of all hikes in a variable named `hike_list`?

hike_list = Hike.all

1. How would you search for the hike with ID 13 and store it in a variable named `hike`?

hike = Hike.find(13)
hike = Hike.where(id: 13)

    - There are two ways to do this! What is the other one?
1. What happens when you use each of the previous two methods to search for a hike with ID 19?

nil

1. How would you get the list of hikes with a rating of 4?
Hike.where(rating: 4)

1. What happens if you try to get the list of hikes with a rating of 1?

nil

1. How would you get the number of hikes in the database?
Hike.count
1. **BONUS:** How would you get the list of hikes less than 8 miles long?

# Using the select enumerable (slower but easier to read)
Hike.all.select do |hike|
  hike.length_miles < 8
end
# - or -
# Using a custom SQL query (faster but harder to read)
Hike.where("length_miles < ?", 8)

### Creating Data

For these questions we'll be working with the following data

name    | length_miles | elevation_gain_feet | max_elevation_feet | rating
---     | ---          | ---                 | ---                | ---
Fortune Ponds | 13.0   | 2700                | 4700               | 3

1. How would you build a new instance of the `Hike` model with the above data and store it in a local variable named `new_hike`, without saving it to the database?

new_hike = Hike.new(name: "Fortune Ponds" length_miles: 13.0,	elevation_gain_feet: 2700, max_elevation_feet: 4700, rating: 3)

1. Once `new_hike` has been built, how would you save it to the database?

new_hike.save

1. How would you accomplish the above two steps in one method call?

create
<!--  -->
### Updating Data

1. Assume that hike #4 has been loaded into an local variable called `hike`:
    ```ruby
    hike = Hike.find(4)
    ```
    How would you change the value of `length_miles` to 8.2 for this local variable, _without changing the database_?
1. Once that change has been made, how would you save the new value to the database?
1. Imagine you had several attributes to update stored in a hash like this:
    ```ruby
    new_values = {
        elevation_gain_feet: 4200,
        length_miles: 9.7,
        rating: 4
    }
    ```
    How would you change all the fields on the `hike` local variable to match whats in the hash and save it to the database in one line of code?

    update

### Deleting Data

1. There are two ActiveRecord methods that will remove a row from the database. What are they, and which one should you be using?
destroy and delete (use destroy)

1. What will the following code print out?

```ruby
hike = Hike.find(4)
hike.destroy
puts Hike.find_by(id: 4)
puts hike.id
```