class Santa
#initialize method
  def initialize (gender, ethnicity)
      puts "Initializing Santas instance...."
      @gender = gender
      @ethnicity = ethnicity
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
      @age = 0
  end
#speak method
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
    puts "The '#{@gender}' gender is the most dominant in the world."
  end
#eat_milk_and_cookies method
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def about
    puts "#{@reindeer_ranking[0]}, #{@gender}, #{@ethnicity}."
  end

  def celebrate_birthday(age)
    @age = age + 1
  end

  # --- got the reindeer_name but need to move him to the end of the order
  def get_mad_at(reindeer_name)
    @reindeer_ranking.each do |rank|
      if rank == reindeer_name
        reindeer_count = @reindeer_ranking.length
        p reindeer_count
        p @reindeer_ranking.index(rank)
        #rank = @reindeer_ranking[reindeer_count-1]


      end
    end
    p @reindeer_ranking
  end

  def gender(gender)
    @gender = gender
  end

  def gender=(gender)
    @gender = gender
  end

  def age=(age)
    @age = age
  end

  def ethnicity=(ethnicity)
    @ethnicity = ethnicity
  end
end

reindeer = Santa.new("","")
reindeer.get_mad_at("Dasher")


# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#
# example_genders.length.times do |gen|
#   santas << Santa.new(example_genders[gen], example_ethnicities[gen])
#   puts "#{example_genders[gen]} and #{example_ethnicities[gen]} "
# end
#
# #calls the speak method in the class if example_genders == "bigender"
# example_genders.each do |gen|
#     if gen == "bigender"
#       santa = Santa.new(gen, "")
#       santa.speak
#     end
# end
#
# #iterates throught the example_ethnicities and capitalizes the ethnicity
# ethnicityCap = []
# example_ethnicities.map do |ethnicity|
#     ethnicityCap << ethnicity.upcase! if ethnicity != "N/A"
# end
#
# #initialize the santa and prints calls the about method
# santa = Santa.new(example_genders[0],ethnicityCap[2])
# santa.about
