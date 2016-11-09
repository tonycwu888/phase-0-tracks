class Puppy
  # Initializing method
  def initialize
      puts "Initializing new puppy instance ..."
  end
  # fetching method - fetches toy when called
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  #speaking method - barks woof when method is called
  def speak(num)
    num.times{|x| puts "Woof!"}
  end
  #rollover method (prints rollover when method is called)
  def  rollover()
    puts "*rollover*"
  end
  #dog_years method - converts human_years to dog_years when called
  def dog_years (human_years)
    human_years * 7
  end
  #jump method - dog jumps up and down when treat is passed to method
  def jump(str)
      if str == "treat"
        puts "jump up and down"
      end
  end
end

spot = Puppy.new
spot.fetch("ball")
spot.speak(3)
spot.rollover
p spot.dog_years(5)
spot.jump("treat")

class Kitty
  #initialize kitty class method
  def initialize
     puts "Initializing Kitty..."
  end
  #sip_milk method -- prints slurp slurp when called
  def sip_milk
    puts "*slurp slurp*"
  end
  #potty method -- prints goes to litterbox when called
  def potty
    puts "*goes to litterbox*"
  end
end

#creates array to initialize 50 kittens
kitty_arr = []
num = 50
until num == 0
 kitty_arr << Kitty.new
  num -=1
end
#prints kitty_arr with sip_milk and potty method
kitty_arr.each do |kitty|
  kitty.sip_milk
  kitty.potty
end
