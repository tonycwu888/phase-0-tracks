# create method to encrypt password for the user
# get input string from user
# get length of string
# go though all letter one by one and use the .next method to advance 1 letter in every loop around
# if the letter is "z" don't advance to next letter, change it to the letter "a"

def encryptor(password)

   index = 0
   while index < password.length
   		if password[index] != "z"
    		 password[index] = password[index].next

    		elsif	password[index] == " "

    		else
    			password[index] = "a"

    	end

     	index += 1
   end
   puts "#{password}"
   return password
end
#encryptor("zed")



#first, get the input string
#look at first letter (which is the 0 placement of the string)
#then index that letter of the alphabet string and return current placement of the letter to temp
#then subtract 1 to get the previous letter placement
#then use the updated letter placement to locate the letter in the alphabet and store it in the input password
#repeat until all letters are reversed (decrypted)

def decryptor(password)

alphabet = "abcdefghijklmnopqrstuvwxyz"

   index = 0
   while index < password.length

   		if password[index] == " "

			else
    		 temp = alphabet.index(password[index])
    		 temp -=1
    		 password[index] = alphabet[temp]

    	end

     	index += 1
   end

   puts "#{password}"
end
#decryptor("ace")


#Ask user if they want to encrypt or decrypt password
#Ask them to type 1 for encrypt or 2 for decrypt 3 for exit
#In order to decrypt, user would have to first create a password and encrypt first.

#
input = 0
until input == 3

puts "Hello there! Would you like to encrypt your password today?"
puts "Press 1 for encrypt"
puts "Press 2 for decrypt (must encrypt before you can decrypt)"
puts "Press 3 for exit"

#gets user input and turn it into integer for below case
input = gets.chomp.to_i

case input

#case 1 collects user password and sends it for encryption
	when 1
 		puts "enter password"
		 password = gets.chomp.downcase
		 password = encryptor(password)

#case 2 if password wasn't entered prior, tell user to do so first
#if user have entered password to encrypt earlier, send previously entered password for decryption
	when 2
 		if password.nil? == true
			  puts "please run option 1 first"
 		else
		  password = decryptor(password)
		end

#if user selects 3 do nothing and end program
	 when 3

	 end
end
