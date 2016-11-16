# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# when using require, you must use absolute path, and when using require_relative
# you don't have to type out file name with extention
require_relative 'state_data'

class VirusPredictor

#intialization of instance variables for the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#sends data to predicted_deaths and speed_of_spread (instance methods)  to process
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end


private

#base on population_density calculate number_of_deaths for given arguments
#print out the stae and number_of_deaths in an outbreak
  def predicted_deaths()
    # predicted deaths is solely based on population density

#refractor
    case
      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 then number_of_deaths =  (@population * 0.3).floor
      when @population_density >= 100 then number_of_deaths =  (@population * 0.2).floor
      when @population_density >= 50 then number_of_deaths =  (@population * 0.1).floor
      else  number_of_deaths = (@population * 0.05).floor
    end
    #
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#base on population_density, method is calculating the speed of spread
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

#refractor
    case
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      else speed += 2.5
    end


    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do  |state_key, state_data|
    all_states = VirusPredictor.new(state_key, state_data[:population_density], state_data[:population])
    all_states.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
#
#The syntax with the string (quotes) allows the author to put spaces in the string vs having to put a _underscore for the name
#
#require_relative allow the class to access data from another file in the same directory
#require allows class to access data from another file within the entire ruby structure
#
#you can use .each .each_key .each_pair . each_value to iterate through a hash
#
#When refactoring the virus_effects, we found that the arguments were being passed to the predicted_deaths and speed_of_spread,
#  and they are already using the instance variables, so it was redundant and it was not needed
#
#this challenge not really solidified, but exposed me to my weakness on iteration, so I would have to practice more on that.
