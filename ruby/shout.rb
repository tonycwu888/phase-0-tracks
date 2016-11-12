module Shout
  #removed self in front of the method to make it a mixin module
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :D " + "Muah!"
  end
end

# p Shout.yell_angrily("AWWWWWWWWWW, you Stu....id ")
# p Shout.yell_happily("What a Wonderfuly day ")

class Wife
  #this inherites methods inside the shout module
  include Shout
end

class Daughter
  include Shout
end

#initialize class and
wife = Wife.new
#use inherited method from the Shout module
p wife.yell_angrily("Go do the DISHES ")

daughter = Daughter.new
p daughter.yell_happily("It's my pleasure, dearest mother ")
