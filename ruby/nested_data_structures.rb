backyard = {
	vegetable_garden: {
		bed: ['tomato', 'eggplant', 'pepper', 'squash', 'chives', 'lettuce', 'cucumber'],
		wall: ['green onion', 'kale', 'aloe vera']
	},
	corner_trees: ['date', 'lemon', 'orange', 'apricot'],
	patio: {
		refrigerator: {
			bottom: ['bottled water', 'smoothies', 'tofu', 'cheese', 'lunch meat'],
			top: ['ice', 'frozen vegetables', 'lean pockets', 'frozen chicken breasts']
		},
		potted_plants: ['lily', 'tea roses', 'cactus'],
		furniture: ['grill', 'shelves','table', 'chair_1', 'chair_2', 'chair_3', 'chair_4']
	},
	main: ['grass', 'paved stones', 'wooden planks'],
	gate: ['compost bin', 'trash bin', 'recycling bin', 'crv bin']
}

puts
puts

backyard[:vegetable_garden][:bed][3] = 'zuccini'
puts backyard

puts
puts

backyard[:patio][:refrigerator][:bottom].each do |cold_content|
	puts "#{cold_content.capitalize} is in the chilled compartment."
end

puts 
puts

backyard[:patio][:refrigerator][:top].each do |frozen_content|
	puts "#{frozen_content.capitalize} is in the frozen compartment."
end

puts
puts

backyard[:corner_trees].push('apple')
puts backyard

puts 
puts

puts backyard[:patio][:furniture]

puts 
puts

backyard[:gate][-1].sub!("crv", "CRV")
puts backyard[:gate]

puts
puts

puts "#{backyard[:vegetable_garden][:wall][-1].capitalize!} is great for burns and moisturizing skin."