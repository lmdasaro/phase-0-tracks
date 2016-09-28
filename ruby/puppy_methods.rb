
class Puppy

def  initialize
puts "Initializing new puppy instance ..."

end

def fetch(toy)
puts "I brought back the #{toy}!"
toy
end

def speak(number) 
count = 0
until count >= number

puts "Woof!"
count+= 1
end

# number.times{puts "Woof!"}

end

def roll_over
puts "*rolls over*"

end

def dog_years(age)
age * 7
end

def high_five
puts "*gives high five*"
end

end


# ############ DRIVER  CODE ##########

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(5)
puppy.roll_over
puts puppy.dog_years(10)
puppy.high_five
Yuujiro = Puppy.new

#================================  NEW TIGER CLASS  ========================================#

class Tiger

def initialize
puts "Initializing new tiger instance ..."
end

def roar(number)
number.times{puts "*roar*"}
end

def high_jump
puts "*jumps really high*"
end
end


######## DRIVER CODE #########



count = 1


arr = []
#alternate loop style:
# loop do 
# break if count == 50
# end

until count > 50

puts "Instance Name?"
name = gets.chomp
name = Tiger.new

arr << name
# puts instance_name

count += 1


end

# puts arr

arr.each do |name|

name.roar(2)
name.high_jump

end