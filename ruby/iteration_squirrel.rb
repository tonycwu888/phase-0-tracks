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

people_currentcy = {
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
  name.upcase!
  puts "#{name} is now in all caps!"
end
puts "================================"
puts "after map! iteration #{dead_celebrities}"
puts "================================"
