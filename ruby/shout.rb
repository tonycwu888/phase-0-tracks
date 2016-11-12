module Shout
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
  include Shout
end

class Daughter
  include Shout
end

wife = Wife.new
p wife.yell_angrily("Go do the DISHES ")

daughter = Daughter.new
p daughter.yell_happily("It's my pleasure, dearest mother ")
