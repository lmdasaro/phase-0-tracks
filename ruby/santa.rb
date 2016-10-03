class Santa

attr_reader :age, :ethnicity
attr_accessor :gender, :reindeer_ranking, :age

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

	def random_age
		@age = Random.new.rand(0..140)
	end

	def ethnicity
		@ethnicity
	end

end

# Nick = Santa.new
# Nick.speak
# Nick.eat_milk_and_cookies("oatmeal raisin")
santas = []

example_genders = ["agender", "male", "female", "undeclared", "ladyboy", "bigender", "transgender", "man trapped in a woman's body", "male", "lady_gaga", "female", "male", "female", "woman trapped in a man's body", "banana", "gender fluid", "N/A", "agender", "shemale", "female"]
example_ethnicities = ["black", "South African", "Lithuanian", "unknown", "Thai", "Latino", "mixed", "German", "white", "Japanese-African", "prefer not to say", "Jewish", "Korean", "Italian", "fruit", "Mystical Creature (unicorn)", "N/A", "robot", "Puerto Rican", "Kitten"]

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
p Claws.reindeer_ranking
Claws.get_mad_at("Rudolph")
p Claws.reindeer_ranking
=end

count = 1

loop do
	break if count == 100
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
puts "This santa is gender: #{santa.gender}, ethnicity: #{santa.ethnicity}, and age: #{santa.random_age}."
count += 1
end
