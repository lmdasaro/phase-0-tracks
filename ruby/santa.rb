class Santa

attr_reader :age, :ethnicity
attr_accessor :gender, :reindeer_ranking

	def  initialize (gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.insert(-1,name)
	end

	def gender
		@gender
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

# Nick = Santa.new
# Nick.speak
# Nick.eat_milk_and_cookies("oatmeal raisin")
santas = []

example_genders = ["agender", "female", "ladyboy", "bigender", "male", "lady_gaga", "female", "banana", "gender fluid", "N/A", "agender", "female"]
example_ethnicities = ["black", "Lithuanian", "Thai", "Latino", "white", "Japanese-African", "prefer not to say", "fruit", "Mystical Creature (unicorn)", "N/A", "robot", "Kitten"]

example_genders.length.times do |i|
  	santas << Santa.new(example_genders[i], example_ethnicities[i])
  end
p santas
=begin
# example_genders.length.times do |i|
# 	puts "This santa's gender is #{santas[i].gender} and ethnicity is #{santas[i].ethnicity}."
# end
=end

Claws = Santa.new("fixed", "feline")

=begin

Claws.gender = "castrati"
puts "Claws identifies as a #{Claws.gender}."
Claws.celebrate_birthday
p Claws.age

=end

p Claws.reindeer_ranking
Claws.get_mad_at("Rudolph")
p Claws.reindeer_ranking



