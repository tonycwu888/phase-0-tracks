module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!" + "Happy, happy, joy-joy!"
  end
end

p Shout.yell_angrily("AWWWWWWWWWW, you Stu....id ")
p Shout.yell_happily("What a Wonderfuly day ")
