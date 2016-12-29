class Spaceship
	attr_reader :max_speed
	attr_accessor :name

	def initialize(name, max_speed)
		@name = name
		@max_speed = max_speed
		@shield = true
		@location 
		@abduct
		@animal_weight
		@inventory = {}
	end

	def enable_shield
		@shield = true
		puts "Shield is turned on!"
	end

	def disable_shield
		@shield = false
		puts "Alert, Alert, Shield is turned off!"
	end

	def warp_to(location)
		puts "#{@name} is now traveling at #{@max_speed} to #{location}."
		@location = location
		puts "#{@name} is now located in #{@location}."
	end

	def cal_weight
		temp_arry = @abduct.split("")
		@animal_weight = 0
		temp_arry.each do |letter|
			@animal_weight += letter.ord
		end
		@animal_weight
	end

	def cargo_weight
		total_weight = 0
		temp_arry = @inventory.keys
		temp_arry.each do |animal|
			animal_arry = animal.split("")
			animal_arry.each do |letter|
				total_weight += letter.ord
			end
		end
		total_weight
	end

	def tractor_beam(animal)
		disable_shield
		@abduct = animal
		cal_weight
		if cal_weight > 500
			false
			puts "Sorry, #{@abduct} is too large for us to pickup."
		else
			@inventory[animal] = @location
			true
			puts @inventory
		end
		enable_shield
	end

	def pickup(description, location)
		warp_to(location)
		tractor_beam(description)
	end

	def print_inventory
		puts "===========Animals Abducted by #{@name}============="
		@inventory.each do |animal, location|
			puts "#{animal} was abducted from #{location}."
		end
		puts "=========================================================="
	end

end

Enterprise = Spaceship.new("USS Enterprise", 200000)
Andromeda = Spaceship.new("HMS Andromeda", 108277)

#puts Enterprise.name = "USS"
#puts Andromeda.max_speed = 45545

# Enterprise.enable_shield
# Andromeda.disable_shield
Enterprise.pickup("cow", "Mars")
Andromeda.pickup("moose", "Pluto")

Enterprise.pickup("cat", "Moon")
Andromeda.pickup("dog", "Jupiter")

Enterprise.pickup("deer", "Venus")
Andromeda.pickup("tiger", "Uranus")

Enterprise.pickup("lion", "Earth")
Andromeda.pickup("mouse", "Saturn")

Andromeda.print_inventory
p Andromeda.cargo_weight