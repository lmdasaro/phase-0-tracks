##house maker
##allow the user to create a house,
##then add rooms,
##then add items

##house can have up to 5 rooms
##room can have an unlimited number of items

#######BUSINESS LOGIC

def add_room_to_house!(house, room_name)
	if house.keys.length == 5
		false
	else
		house[room_name] = []
		true
	end
end

house = {}


def add_item_to_room!(house, room_name, item_name)
house[room_name] << item_name		##or you can use house[room_name].push = item_name
end



######## USER INTERFACE

def print_house(house)
	puts "--------------------"
	puts "Current house configuration:"
	house.keys.each do |room_name, index|
		puts "#{index} - #{room_name}: #{house[room_name]}"
	end
	puts "--------------------"
end

#let the user add rooms
can_add_rooms = true

#stop loop when rooms cannot be added
while can_add_rooms
	#get a room name from the user
	puts "Type the name of a room to add (or type 'done'):"
	room_name = gets.chomp
	#if the user is done, stop loop
	break if room_name == 'done'
	#otherwise, add the room to the house
	can_add_rooms = add_room_to_house!(house, room_name)
	print_house(house)
end



#let the user add items to rooms
#in an infinite loop:
loop do
	#ask the user for the number of the room they want to add
	#items to 
	puts "Enter the number of the room to add an item to (or type 'done'):"
	inputted_idx = gets.chomp
	#if the user is done, break
	break if inputted_idx == 'done'
	#otherwise, add the item to the room
	room_idx = inputted_idx.to_i
	puts "Enter the item to add: "
	item_to_add = gets.chomp
	add_item_to_room(house, house.keys[room_idx], item_to_add)
	#print the new house configuration
	print_house(house)
end



##TEST CODE
# rooms = ["Living room", "bedroom", "bathroom", "kitchen", "bedroom 2", "bedroom 3"]
# rooms.each do |room|
# 	room_added = add_room_to_house!(house, room)
# 	add_item_to_room!(house, room, "cat") if room_added
# end




# ***
# def change_num(x)
# 	x += 1
# end
# def change_arr(arr)  ##
# 	arr << 1
# end
# ##nondangerous method:::
# def change_arr(arr)
# 	copy = arr.dup
# 	copy <<1
# 	return copy
# end
# ##nondangerous method end
# def change_bool(bool)
# 	bool = !bool
# end

# test_bool = true
# n = 5
# test_array = [2,3,4]
# p test_bool
# p n 
# p test_array

# change_num(n)
# change_arr(test_array)
# change_bool(test_bool)

# p test_bool
# p n
# p test_array
# ***


