class Dancer

	attr_reader :name
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
		@card = []
		@size = 3
	end	

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(add_name)
		@card << add_name

	end

	def card
		@card
	end

	def begin_next_dance
		next_dancer = @card.shift
		"Now dancing with " + next_dancer + "."
	end

	def limit_reached 
		if @card.count > @size
		@card.pop(@card.count - @size)
		@card
		
		end
	end
end
