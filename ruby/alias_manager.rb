#use string and split into 2 words
#store it to name reverse / switch spots of first and last name on index
#create vowel string aeiou =4
#create consonatnts string bcdfghjklmnpqrstvwxyz =20
#if vowel, move to next vowel
#if consonants, move to next consonatnts

#example input: jonny wisdom
#example output:  xotfun kuppz

def spy_scramble(real_name)
  	reverse_name = real_name.split(' ').reverse
  	p reverse_name
  	reverse_name[0].downcase!.to_s
  	reverse_name[1].downcase!.to_s
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
  	secret_pass1 = []
  	secret_pass2 = []

	index = 0

	while index < reverse_name[0].length
		temp = reverse_name[0].split('')
		vow_index = vowels.index(temp[index])
		con_index = consonants.index(temp[index])

		if vow_index == nil
			temp[index] = consonants[con_index+1]
			secret_pass1 << temp[index]
		elsif
			temp[index] = vowels[vow_index+1]
			secret_pass1 << temp[index]
		else
			break
		end

   		index += 1
   	end

	counter = 0
	while counter < reverse_name[1].length
		temp = reverse_name[1].split('')
		vow_index = vowels.index(temp[counter])
		con_index = consonants.index(temp[counter])

		if vow_index == nil
			temp[counter] = consonants[con_index+1]
			secret_pass2 << temp[counter]
		else
			temp[counter] = vowels[vow_index+1]
			secret_pass2 << temp[counter]
		end
   		counter += 1
   	end

   puts "#{secret_pass1.join} (last name)  #{secret_pass2.join} (first name) "

end

input = 0

until input == 2

puts "Please press 1 to scramble your name."
puts "Please press 2 to exit"

input = gets.chomp.to_i
outputs = {}
	case input

		when 1
			puts "Please enter a name to be scrambled: "
			input = gets.chomp.downcase
			input = spy_scramble(input)
		when 2

	end
end
