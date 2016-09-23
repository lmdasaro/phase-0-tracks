##client's name, age, number of children, decor theme, etc(mix of string, integer, boolean data)

## client_info
	#initialize the hash
	client_details = {}

	#ask for name
	puts "Client's name:"
	client_details[:name] = gets.chomp.capitalize

	#ask for age
	puts "Client's age:(digit)"
	client_details[:age] = gets.chomp.to_i

	#ask for number of children
	puts "Number of client's children:(digit)"
	client_details[:num_of_children] = gets.chomp.to_i

	#ask for decor theme
	puts "Client's decor theme:"
	client_details[:decor] = gets.chomp

	#ask for budget
	puts "Client's budget:"
	client_details[:budget] = gets.chomp.to_i

	#ask for friend reference
	puts "Client referred by friend?(y/n)"
	client_details[:friend_ref] = gets.chomp
	if client_details[:friend_ref] == "y"
		client_details[:friend_ref] = true
	else
		client_details[:friend_ref] = false
	end

	#print hash with client details
	puts "Here are the current client details for #{client_details[:name]}"
	puts client_details

	#ask if update is needed
	puts "Are there any changes to make to these details? Type the category if there are changes to report. Type 'none' if there are no changes to report."
	change = gets.chomp.downcase
	if change == "none"
		puts "Client details for #{client_details[:name]} have been saved."
	else
		change = change.to_sym
		puts "Please enter changed information for category:#{change}."
		change_details = gets.chomp
		client_details[change] = change_details 
		puts "You updated #{change}. Client details for #{client_details[:name]} have been saved."
		puts client_details
	end
