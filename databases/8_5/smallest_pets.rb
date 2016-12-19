=begin === keep inventory of smallest pets shop ===
1. add pets to database (when child purchase new pets)
 => name, color, age, fury (true/false)
    => ask user to type whole string (name, color, age, fury)
2. remove a pet from database (when child lose or distroys pets)
  => provide the name of the pet to delete
3. display pets from the database (show child what she has in doll house)
  => use sqlite command to display the pets
4. exit system
  => display "thank you for using our pet inventory"
=end
require 'sqlite3'
require 'faker'


db = SQLite3::Database.new('smallest_pets.db')

create_table = <<-SQLite3
    CREATE TABLE IF NOT EXISTS pets (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    color VARCHAR(255),
    age INT,
    fury BOOLEAN
    )
  SQLite3

db.execute(create_table)

def add_new_item(db, name, color, age, fury)
  db.execute("INSERT INTO pets (name, color, age, fury) VALUES (?, ?, ?, ?)", [name, color, age, fury])
  #puts db.execute("SELECT * FROM pets")
end

def update_item(db, name, item_to_update, new_value)
  if item_to_update == "color"
    db.execute("UPDATE pets SET #{item_to_update}='#{new_value}' WHERE name='#{name}'")
  elsif item_to_update == "age"
    db.execute("UPDATE pets SET #{item_to_update}=#{new_value} WHERE name='#{name}'")
  else
    puts "Sorry, you have either entered an invalid item or we are not able to update this item at this point."
  end
end

def remove_item(db, name)
  db.execute("DELETE FROM pets WHERE name='#{name}'")
end

# 10000.times do
#   fury = ['true', 'false']
#   add_new_item(db, Faker::Name.name, Faker::Commerce.color, rand(1..5), fury.sample)
# end


puts "We have over 10,000 smallest pets in our inventory.  Please let us know what you would like to do with the inventory."
puts "Enter (1) -- if you would like to add a pet."
puts "Enter (2) -- if you would like to update a pet's information."
puts "Enter (3) -- if you would like to delete a pet from the system."
puts "Enter (4) -- if you would like to exit the system."

selection = gets.chomp.to_i

case selection
  when 1
    puts "Please enter the pets (name, color, age, 'true' if it's fury, and 'false' if it's not fury)."
    puts "Sample entry: (Jonny cutie, blue, 5, true)"
    add_item = gets.chomp
    temp_arry = add_item.split(', ')
    add_new_item(db, temp_arry[0], temp_arry[1], temp_arry[2], temp_arry[3])
    puts db.execute("SELECT * FROM pets")
  when 2
    puts "We only allow updates on the (color) and (age) in the inventory, please let us know what you would like to update."
    puts "Please use the format below, name of pet, item you would like to update, and the new value of the item."
    puts "Sample entry: Jonny, age, 5"
    temp_update = gets.chomp.downcase
    temp_arry = temp_update.split(', ')
    update_item(db, temp_arry[0], temp_arry[1], temp_arry[2])
    puts db.execute("SELECT * FROM pets")
  when 3
    puts "Please enter the name of the pet to delete."
  when 4
    puts "Thank you for using our pet inventory."
end

puts db.execute("SELECT * FROM pets")
