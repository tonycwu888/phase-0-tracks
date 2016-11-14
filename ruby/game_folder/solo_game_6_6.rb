

# 1. get input from user and store in temp var
#   clear screen and display length of secret word for next user to guess
# => Gem.win_platform? ? (system "cls") : (system "clear")
#   ==>create secret word method to store and display length
#   (secret_word method)
#
# 2. user 2 will try to guess secret word
#   ==> please enter a letter or the secret word.
#     -you will have (length of word) guesses.
#     -if user enters letter:
#         -store each letter guessed in array
#
#         -compare letter with the letters in secret word
#         -if letter found, display letters of the secret word to user
#           ask them to guess again, then tell them how many more chances.
#           ==iterate through string of secret word
#           if user enters the correct "string" exit program

#     -if user enters "string" goto (guess_word method)
#         -compare string with secret word
#         -if user enters more than 1 letter, check and compare to secret word
#         -if match the secret word, congrat user, otherwise, exit and tell he's not too bright


class WordGuessingGame
  attr_accessor :chances, :secret_word, :letter_guessed, :each_let_guessed
#initialize instance variables
    def initialize(secret_word)
      @chances = 0
      @secret_word = secret_word
      @let_arry_guessed = []
      @each_let_guessed
    end
    #prints how many letters in the secret word
      def initial_entry(input)
        puts "_ " * input.length
      end
    #adds chances to counter
        def chances
          @chances += 1
        end
        #checks for users answer if they would like to enter the secret_word
          def guess_word(word)
            word = word.to_s
            if word == @secret_word
              puts "You are so smart and amazing, the secret word is #{@secret_word}!"
            else
              puts "Better luck next time sucker!  You are awful at this game!"
            end
          end
          #check for user enter letter and store in array
            def guess_letter(letter)
                return if @chances > @secret_word.length * 2
                temp_pass = @secret_word.split(//)
                temp_pass.each do |pass|
                  if letter == pass
                    @let_arry_guessed << letter
                    let_index = @let_arry_guessed.index(pass)
                    @each_let_guessed = @let_arry_guessed[let_index]
                  else
                    @let_arry_guessed << letter
                  end
                  @let_arry_guessed.uniq!
                end
            end
    #prints the user's result, how many times they entered and total amount of entries they have
              def print_guessed_letters
                #if their total chances have reached, exit
                  return if @chances > @secret_word.length
                  print_array = []
                  count = 0
                  while count < @secret_word.length
                        if @secret_word[count] == @each_let_guessed
                          print_array << @each_let_guessed
                        elsif print_array[count] != "_ "
                          print_array << "_ "
                        end
                        count += 1
                  end

              puts "#{print_array.join}"
              puts "You have guessed #{@chances} times"
              puts "You have a total of #{@secret_word.length} chances."

              end
end


#user interface

puts "Welcome to the Word Guessing Game."
puts "Please enter a word for your friends to guess"
secret_word = gets.chomp.to_s
#initialize new class
game = WordGuessingGame.new(secret_word)
#clears the screen so user number 2 can try to guess what user one entered
Gem.win_platform? ? (system "cls") : (system "clear")


#displays how many letters are in the secret word
game.initial_entry(secret_word)



puts "Secret word is hidden and it has this many letters:"
puts "Please enter 1 letter at time to try and figure out the word.  If you think you know the word, type the whole word in to win.  If you guess wrong, (GAME OVER)!!"
#loop to have user keep entering letter to figure out what the secret word is
  count = 1
  until count > secret_word.length
    letter = gets.chomp.to_s
    #increments his chance number after entering each letter
    game.chances


    #when user is ready to enter the answer
    if letter.length > 1

      game.guess_word(letter)
      count = secret_word.length + 1
    else
      #pass to guess_letter method to process entry
      game.guess_letter(letter)
      #print out how many time user have tried and how many chances total
      game.print_guessed_letters
    end
    count += 1

  end
