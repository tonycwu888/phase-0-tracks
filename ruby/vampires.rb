#get employee name ?
#how old are you ?
#what year were you born?
#Do you want us to order you some garlic bread ?
#Would you like us to enroll you in the company's health insurance?

#If the employee got their age right, and is willing to eat garlic bread #or sign up for insurance, the result is “Probably not a vampire.”
#If the employee got their age wrong, and hates garlic bread or waives #insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t #want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the #name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”

#until loop to check for allergies, if done, exit and if "sunshine", set conditions to tell surveyor that this is Probably a vampire

puts "How many employees would you like to survey today?"
num_survey = gets.chomp.to_i

counter = 0
while counter < num_survey

	puts "What is your name?"
	employee_name = gets.chomp.to_s

	puts "How old are you?"
	employee_age = gets.chomp.to_i

	puts "What year were you born in?"
	employee_birth_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread, would you like us to order some for you? y/n"
	garlic_bread = gets.chomp.to_s

	puts "Would you like to enroll in the company's health insurance? y/n"
	health_ins = gets.chomp.to_s

	puts "List all your allergies please.  Type (done) when you are finish"
	allergies = gets.chomp.to_s

	until allergies == "sunshine" || allergies == "done"
		  allergies = gets.chomp.to_s
		  if allergies == "sunshine"
			    health_ins = "n"
			    break
		  elsif allergies == "done"
			    break
		  end
	end

	 time = Time.new
	  if employee_name == "Drake Cula" || employee_name == "Tu Fang"
		      puts "#{employee_name} is definitely a vampire.  Stab him in the heart!"
	  elsif employee_age != (time.year - employee_birth_year) && garlic_bread == "n" || health_ins == "n"
		      puts "#{employee_name} is probably a vampire."
	  elsif employee_age != (time.year - employee_birth_year) && garlic_bread == "n" && health_ins == "n"
		      puts "#{employee_name}  is almost certainly a vampire."
	  elsif employee_age == (time.year - employee_birth_year) && garlic_bread == "y" && health_ins == "y"
		      puts "#{employee_name} is probably not a vampire."
	  else
		      puts "Not sure if #{employee_name} is a vampire or not.  Results inconclusive."
	  end
	counter += 1
end

puts "------------------------"
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
