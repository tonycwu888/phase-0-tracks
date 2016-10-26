puts "What is the hamsters name?"
	ham_name = gets.chomp
puts "Volume level (1-10)"
	vol_lev = gets.chomp
puts "What is the fur color?"
	fur_color = gets.chomp
puts "Is the hamster adoptable (y/n)"
	adoptability = gets.chomp
puts "Estimated age"
	ham_age = gets.chomp

if ham_age == ""
	ham_age = nil
end

vol_lev = vol_lev.to_i
ham_age = ham_age.to_i

puts "Hamster Name: #{ham_name}"
puts "Hamster Noise Level (1-10): #{vol_lev}"
puts "Fur Color: #{fur_color}"
puts "Adoptability: #{adoptability}"
puts "Hamster Age: #{ham_age}"
