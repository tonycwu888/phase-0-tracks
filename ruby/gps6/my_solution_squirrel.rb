# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# include data from other file, access methods within that file
# just "require" would need to have the absolute path, "relative" means
# that is in the same folder
require_relative 'state_data_squirrel'
class VirusPredictor

  # Takes three parameters and sets instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls predicted_deaths and speed_of_spread private methods with their respective parameters
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  # Denotes that only instances of this class can access below methods
  private
  # Calculates the predicted deaths of each state by population & population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    case
      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
      else number_of_deaths = (@population * 0.3).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  #
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  # end
  # Estimates speed of spread based on population density by state
  def speed_of_spread  #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 then speed += 1
      when @population_density >= 100 then speed += 1.5
      when @population_density >= 50 then speed += 2
      else speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
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


#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
STATE_DATA.each do |state_key, state_data|
  all_states = VirusPredictor.new(state_key, state_data[:population_density], state_data[:population])
  all_states.virus_effects
end

#=======================================================================
# Reflection Section
#different hash symbols: ("key state" => "value")  (key: "value")
  #string keys are used when more than one word in key, key seperated by : is easier reading
#require_relative allows the current class to access all methods from the require_relative file
  #require is usually for accessing gem files/ruby files and would require absolute path to the files
#iterating through hash -- you can use, .each, .each_key, .each_value
#data was being passed into every method, but it's not neccessary because, it was already passed in witht he initialize method
#this asssignment solidified my understanding of iterating over hash and passing of data from one method to another.
