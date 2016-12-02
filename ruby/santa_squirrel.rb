class Santa
  #attr_reader :gender, :ethnicity

  def initialize(gender, ethnicity, weight)
    puts "Initializing Santa instance...."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho!  Haaaaappy holidays"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
weight = [200, 198, 250, 205, 220, 210, 300]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], weight[i])
  puts santas
end
