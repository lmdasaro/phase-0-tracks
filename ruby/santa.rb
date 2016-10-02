class Santa

	def  initialize (gender, ethnicity)
		puts "Initializing Santa instance ..."
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		age += 1
	end

	def get_mad_at(reindeer)
		reindeer_ranking.index(reindeer)
		reindeer_ranking.insert(-1, reindeer_ranking.delete_at(reindeer))
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age = age

	end

	def ethnicity
		@ethnicity = ethnicity
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