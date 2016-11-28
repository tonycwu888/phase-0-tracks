def simple_print
  puts "before running block"
  yield (5)
  puts "after running block"
end

simple_print { |x| puts x * 3 }
puts "================================"

dead_celebrities = ['Elvis Presley',
    'Bruce Lee',
    'Whitney Houston',
    'James Brown',
    'Jim Morrison',
    'James Dean',
    'Marvin Gaye'
]

people_currency = {
    one: 'Washington',
    two: 'Jefferson',
    five: 'Lincoln',
    ten: 'Hamilton',
    twenty: 'Jackson',
    fifty: 'Grant',
    hundred: 'Franklin',
    thousand: 'Cleveland'
}

dead_celebrities.each do |name|
  puts "#{name} is dead."
end

puts "================================"
puts "before map! iteration #{dead_celebrities}"
puts "================================"

dead_celebrities.map! do |name|
  name.upcase
  #puts "#{name} is now in all caps!"
end
puts "================================"
puts "after map! iteration #{dead_celebrities}"
puts "================================"

#release 2.1
#array
p dead_celebrities.delete_if {|name| name == "BRUCE LEE"}
#hash
p people_currency.delete_if { |bill, name| name == "Grant"}

#release 2.2
#array
p dead_celebrities.keep_if {|name| name.length <= 12}
#hash
p people_currency.keep_if {|bill, name| name.length <= 12}

#release 2.3
#array
p dead_celebrities.reject {|name| name == 'JAMES BROWN'}
#hash
p people_currency.reject {|bill, name| name == 'Lincoln'}

#release 2.4
#array
kids = ["Tommy", "Bobby", "Joey", "Bobo", "Samantha", "Bob"]
p kids
p kids[2]
p kids.take_while { |kid| kid != kids[2] }
