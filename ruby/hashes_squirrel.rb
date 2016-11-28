#designer to input:
#client's name
#client's age
#number of children
#decor theme
#fav_color
#smoker = true or false
#hobby

#Prompt the designer/user for all of this information.
#get input from user with gets.chomp

#Convert any user input to the appropriate data type.
#convert data with .to_s or .to_i to then store valid data in hash

#Print the hash back out to the screen when the designer has answered all of the questions.
#puts "here's your hash"

client_data = {}

puts "Please fill out the following form:"
puts "What is the client's name?"
client_data["client name"] = gets.chomp.to_s

puts "What is the client's age?"
client_data["client age"] = gets.chomp.to_i

puts "How many children does your client have?"
client_data["number of children"] = gets.chomp.to_i

puts "What is the client's decor theme?"
client_data["decor theme"] = gets.chomp.to_s

puts "What is your favorite color?"
client_data["favorite color"] = gets.chomp.to_s

puts "Does your client smoke? (y/n)"
client_data["smoker"] = gets.chomp.to_s

puts "Does your client have any special hobbies?"
client_data["hobby"] = gets.chomp.to_s

#Give the user the opportunity to update a key (only onece).


puts "Here's your client's information:"
puts "===================="
client_data.each do |k, v|
  puts "#{k}: " + "#{v}"
end
puts "===================="

puts "If you would like to make a change, please enter the item you would like to change.
   Please enter the word (none) if you are satisfied with your entry:"

update_input = gets.chomp.to_s

client_data.each_key { |key|
      if update_input == "client age"
        puts "Please enter the correct number for #{update_input}:"
        temp = gets.chomp.to_i
        client_data[update_input] = temp
        break
      elsif update_input == "number of children"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_i
        client_data[update_input] = temp
        break
      elsif update_input == "client name"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        client_data[update_input] = temp
        break
      elsif update_input == "decor theme"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        client_data[update_input] = temp
        break
      elsif update_input == "favorite color"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        client_data[update_input] = temp
        break
      elsif update_input == "smoker"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        client_data[update_input] = temp
        break
      elsif update_input == "hobby"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        client_data[update_input] = temp
        break
      elsif update_input == "none"
        puts "Looks like you're done with your entry.  Good bye."
        break
      else
        puts "Sorry, #{update_input} is not in the hash."
        break
      end
}
puts "Here's the updated data:"
puts "===================="
client_data.each do |k, v|
  puts "#{k}: " + "#{v}"
end
puts "===================="
