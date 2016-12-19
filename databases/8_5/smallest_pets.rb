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
