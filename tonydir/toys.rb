require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("toys.db")
db.results_as_hash = true
create_table_cmd = <<-ANY
	CREATE TABLE IF NOT EXISTS dolls (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INT
	)
ANY

db.execute(create_table_cmd)

def create_doll(db, name, age)
	db.execute("INSERT INTO dolls (name, age) VALUES (?, ?)", [name, age])
end

# 1000.times do 
# 	create_doll(db, Faker::Name.name, 3)
# end


dolls = db.execute("SELECT * FROM dolls")
dolls.each do |dolls|
	puts "#{dolls['name']} is #{dolls['age']} with id num of #{dolls['id']}. "
end	