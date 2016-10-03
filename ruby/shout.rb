# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#   	words + "!!!" + " :D"
#   end
# end

# puts Shout.yell_angrily("This is so stressful")
# puts Shout.yell_happily("People are so nice sometimes")

module Shout
	def yells(words)
		words.upcase + "!!" 
	end
end

class Mother
	include Shout
end

class Daughter
	include Shout
end

Hyang = Mother.new
Lisa = Daughter.new

p Hyang.yells("I don't like this")
p Lisa.yells("You don't have to")