module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!" + "Happy, happy, joy-joy!"
  end
end
#
# p Shout.yell_angrily("AWWWWWWWWWW, you Stu....id ")
# p Shout.yell_happily("What a Wonderfuly day ")

class Wife
  include Shout
end

class Son
  include Shout
end

wife = Wife.new
p wife.yell_angrily("Do your homework")

son = Son.new
p son.yell_happily("Yes mother dear, right away")
