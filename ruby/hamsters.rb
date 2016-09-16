#hamster's name
puts "What's your hamster's name?"
name = gets.chomp
name = name.capitalize
puts "Your hamster's name is #{name}."

#volume level from 1-10
puts "What's the volume level of your hamster?(1-10)"
volume_level = gets.chomp
volume_level = volume_level.to_i
puts "Your hamster has a volume level of #{volume_level}."


#fur color
puts "What's your hamster's fur color?"
fur_color = gets.chomp
puts "Your hamster has #{fur_color} fur."


#whether the hamster is a good candidate for adoption
puts "Is your hamster a good candidate for adoption?(y/n)"
answer = gets.chomp
if answer == "y" 
	answer = true
	puts "Your hamster is a good candidate for adoption."
elsif answer == "yes"
	answer = true
	puts "Your hamster is a good candidate for adoption."
else answer == "n"
	answer = false
	puts "Your hamster isn't a good candidate for adoption."
end

#estimated age
puts "What is the estimated age of your hamster?"
age = gets.chomp
if age == ""
	age = nil
	puts "You don't know the age of your hamster."
else 
	puts "Your hamster is approximately #{age} years old."
end