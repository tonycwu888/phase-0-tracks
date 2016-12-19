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

def update_item(db, item_to_update, new_value, name)
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


update_item(db, "dingdong", "2", "Krystal Bode")


puts ""
#puts db.execute("SELECT * FROM pets")
