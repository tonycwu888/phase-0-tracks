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
  end
#eat_milk_and_cookies method
  def eat_milk_and_cookies(cookie)
       puts "That was a good #{cookie} cookie!"
  end
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |count|
  santas << Santa.new(example_genders[count], example_ethnicities[count])
  puts "#{example_genders[count]} and #{example_ethnicities[count]} "
end

santas.each do |santa| x=0

  if santas[x] == "agender"
    santa.speak
    santa.eat_milk_and_cookies("peanut butter")
  end
  x += 1
end
