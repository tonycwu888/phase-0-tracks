def print_x
  puts "printing before yield"
  yield(4)
  puts "printing after yield"
end

print_x {|x| puts x*2}

#Release 1
names = ['john', 'joe', 'bob', 'stan', 'jeff', 'henry']
cars = {lambo:"red", porsche:"blue", maserati:"yellow"}

p names

names.each do |name|
  puts "Your name is #{name}?"
end
p names  #prints value after condition is met

p names
puts "Let me capitalize your name for you."

names.map! do |name|
  name.capitalize
end
p names  #prints value after condition is met

p cars
cars.each do |car, color|
  puts "I love that #{car} in #{color}!"
end
p cars  #prints value after condition is met


#release 2
animals = ["cat", "dog", "mouse", "bird"]
#1 deleting any that meets a condition
p animals  #prints value before
animals.delete_if { |animal| animal == "dog"}
p animals  #prints value after

grades = {Joe:90, Bob:70, Josh:75, Mo:85, Coco:60, Tommy:60, Henry:65}

#2 filters a data structure for only items that satisfy
p grades  #prints value before
grades.select! { |name, grade| grade > 65 }
p grades  #prints value after

#3 another filters a data structure for only items that satisfy
p grades  #prints value before
grades.keep_if { |name, grade| grade > 70 }
p grades  #prints value after

#4 method to remove items from data until condition in block evaluates false
kids = ["Tommy", "Bobby", "Joey", "Bobo", "Samantha", "Bob"]
p kids
p kids[2]
p kids.take_while { |kid| kid != kids[2] }
