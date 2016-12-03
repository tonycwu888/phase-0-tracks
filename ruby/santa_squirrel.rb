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

  def celebrate_birthday
    @age += 1
    puts "Happy Birthday Santa, you are now #{@age} years old!"
  end

  def get_mad_at(reindeer)
    puts "Original Ranks #{@reindeer_ranking}"
    @reindeer_ranking.delete_if {|ranking| ranking == reindeer}
    @reindeer_ranking.push reindeer
    puts "New Ranks #{@reindeer_ranking}"
  end

  def gender=(gender)
    @gender = gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
weights = [200, 198, 250, 205, 220, 210, 300]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], weights[i])
  puts santas
end
santas = Santa.new("agender", "white", 200)
santas.celebrate_birthday
santas.get_mad_at("Vixen")
p santas.age
p santas.gender = "Latina"
p santas.ethnicity
