class Santa
    attr_accessor :age, :gender, :ethnicity

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
    puts "About the #{@reindeer_ranking[0]}, #{@gender}, #{@ethnicity}."
  end

  def celebrate_birthday(age)
    @age = age + 1
    puts "Happy Birthday Santa, you are now #{@age} years old!"
  end

  # --- got the reindeer_name but need to move him to the end of the order
  def santa_mad_at(reindeer_name)
    @reindeer_ranking.each do |rank|
      #find the reindeer in the reindeer_ranking array
      if rank == reindeer_name
        #store the reindeer that santa is mad at
        temp = rank
        #remove reindeer that santa is mad at
        @reindeer_ranking.delete(reindeer_name)
        #put the temp stored reindeer tot he end of the line
        @reindeer_ranking << temp
      end
    end
    p @reindeer_ranking
  end
  def create_santa(number_of_santa)
    #generate santa's random age
      count = 0
      while count < number_of_santa.to_i
        @age = Random.new
        santa_age = @age.rand(140)
        puts "========== NEW Santa ============="
        puts "This santa is #{santa_age} years old."
        #generate random gender
        puts "He/She/It is a part of the (#{@gender.sample}) gender."
        puts "He/She/It is a/an #{@ethnicity.sample}."
        puts "============ end ================="
        count += 1
      end
  end
end

santas = []
example_genders = ["agender", "female", "Ambonec", "Anogender", "Molligender", "Demigender", "Egogender", "Genderflow", "Glassgender", "Polygender", "Hydrogender", "Gyragender", "Trigender", "Neutrois", "Intergender", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Bemba", "Icelanders", "Javanese", "Jews", "Luba", "Macedonians", "Norwegians", "Scottish", "Soga", "Zulu", "Tamils", "Greeks", "Bengali", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |gen|
  santas << Santa.new(example_genders[gen], example_ethnicities[gen])
  puts "#{example_genders[gen]} and #{example_ethnicities[gen]} "
end

#calls the speak method in the class if example_genders == "bigender"
example_genders.each do |gen|
    if gen == "bigender"
      santa = Santa.new(gen, "")
      santa.speak
    end
end

#iterates throught the example_ethnicities and capitalizes the ethnicity
ethnicityCap = []
example_ethnicities.map do |ethnicity|
    ethnicityCap << ethnicity.upcase! if ethnicity != "N/A"
end

#initialize the santa and prints calls the about method
santa = Santa.new(example_genders[0],ethnicityCap[2])
santa.about

#*******Release 3 (do the thing)******

#>>> calculate santa's age --add 1 year
santa_age = Santa.new("","")
santa_age.celebrate_birthday(1001)

#>>> put reindeer on naughty list ---to the end
reindeer = Santa.new("","")
reindeer.santa_mad_at("Vixen")

reindeer = Santa.new("new gender","crazy")
reindeer.gender

#*******Release 4 (do the thing)******

santa = Santa.new(example_genders, example_ethnicities)
santa.create_santa(10000)
