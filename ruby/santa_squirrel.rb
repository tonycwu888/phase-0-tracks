class Santa
  attr_reader :ethnicity, :age, :weight, :gender
  #attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance...."
    @gender = gender
    @ethnicity = ethnicity
    @weight = []
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
    @reindeer_ranking.delete_if {|ranking| ranking == reindeer}
    @reindeer_ranking.push reindeer
    puts "Santa is really mad at: #{reindeer}."
    puts "#{reindeer} is now in the back of the line."
    puts @reindeer_ranking
  end

  def random_num_of_santas
    number_of_santa = rand(1..10000)
    puts "We will now generate #{number_of_santa} santas!!"
    create_santa(number_of_santa)
  end

  def create_santa(number_of_santa)
    number_of_santa.times do |num| num +=1
      @age = rand(1..140)
      @weight = rand(255..400)
      puts "============================================================="
      puts "Santa number #{num} is #{@age} years old."
      puts "(He/She/It) is of #{@gender.shuffle[0]} and #{@ethnicity.shuffle[0]} ethnicity."
      puts "Oh boy, this one needs to be on a DIET.  Weight (#{@weight})!"
      puts "============================================================="
    end
  end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "multi gender", "i-gender", "my-gender", "hex-gender", "uno-gender", "ocho-gend", "quad-gend", "cab-gend", "golden-gend", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "Bihari", "Catalans", "Danes", "Fula", "Galician", "Hui", "Hungarians", "Greek", "Irish", "Kikuyu" "N/A"]

santas = Santa.new(example_genders, example_ethnicities)
santas.celebrate_birthday
santas.get_mad_at("Vixen")

#generate 1000 santas
#each santa will have a random gender
#each santa will have a ramdom ethnicity
#each santa will have a random weight
#each santa will be the age between 0-140 years old
#added logic.. created method to generate random number of santas to be created by system
#random_num_of_santas method will call create santa method to generate the santas.
santas.random_num_of_santas
