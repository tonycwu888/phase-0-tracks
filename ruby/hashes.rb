#designer to input:
#client's name
#client's age
#number of children
#decor theme
#fav_color
#smoker
#hobby

#Prompt the designer/user for all of this information.
#get input from user with gets.chomp

#Convert any user input to the appropriate data type.
#convert data with .to_s or .to_i to then store valid data in hash

#Print the hash back out to the screen when the designer has answered all of the questions.
#puts "here's your hash"

OBA_design = {}

puts "Please fill out the following form:"
puts "What is the client's name?"
OBA_design["client name"] = gets.chomp.to_s

puts "What is the client's age?"
OBA_design["client age"] = gets.chomp.to_i

puts "How many children does your client have?"
OBA_design["number of children"] = gets.chomp.to_i

puts "What is the client's decor theme?"
OBA_design["decor theme"] = gets.chomp.to_s

puts "What is your favorite color?"
OBA_design["favorite color"] = gets.chomp.to_s

puts "Does your client smoke?"
OBA_design["smoker"] = gets.chomp.to_s

puts "Does your client have any special hobbies?"
OBA_design["hobby"] = gets.chomp.to_s

#Give the user the opportunity to update a key (no need to loop, once is fine).
#After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme"
#(for example), your program should ask for a new value and update the :decor_theme key.
#(Hint: Strings have methods that will turn them into symbols, which would be quite handy here.)
#You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
#...find out what user wants to change: use following:  'client_name'.to_sym   #=> :"client_name"
#...if OBA_design[].keys equal input ...ask for user new info. then change the value of the key requested

puts "Here's your client's information, if you would like to make a change, please enter the item you would like to change.  Please enter the word (none) if you are satisfied with your entry."
p OBA_design

update_input = gets.chomp.to_s
OBA_design.each_key { |key|
      if update_input == "client age"
        puts "Please enter the correct number for #{update_input}:"
        temp = gets.chomp.to_i
        OBA_design[update_input] = temp
        p OBA_design
        break
      elsif update_input == "number of children"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_i
        OBA_design[update_input] = temp
        p OBA_design
        break
      elsif update_input == "client name"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        OBA_design[update_input] = temp
        p OBA_design
        break
      elsif update_input == "decor theme"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        OBA_design[update_input] = temp
        p OBA_design
        break
      elsif update_input == "favorite color"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        OBA_design[update_input] = temp
        p OBA_design
        break
      elsif update_input == "smoker"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        OBA_design[update_input] = temp
        p OBA_design
        break
      elsif update_input == "hobby"
        puts "Please enter the correct #{update_input}:"
        temp = gets.chomp.to_s
        OBA_design[update_input] = temp
        p OBA_design
        break
      elsif update_input == "none"
        puts "Looks like you're done with your entry.  Good bye."
        p OBA_design
        break
      else
        puts "Sorry, #{update_input} is not in the hash."
        p OBA_design
        break
      end
}
