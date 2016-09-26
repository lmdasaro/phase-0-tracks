=begin
creating a fake name out of a real name by:
1. swapping the first and last name
2. changing all of the vowels (aeiou) to the next vowel in (aeiou) and all of the consonants to the 
next consonant in the alphabet. ex: a->e. d->f.
=end
=begin
this here will take care of edge cases and make sure the ascending character change happens.
=end
def change_char(char, list)
	if char == list[-1]
		list[0]
	else
		list[list.index(char) + 1]
	end 
end
=begin
now to create the alias from the real name. first i have to split the argument into separate names, 
turning it into an array. then split the names into individual letters. once the names are broken down 
into characters, then i can run the character change method on them individually.
=end
def name_change(real_name)
	new_name = real_name.downcase.split(' ')
	new_name.map! { |real_name|
		real_name.split('').map! { |char|
			if "aeiou".index(char) != nil
				change_char(char, "aeiou")
			else 
				change_char(char, "bcdfghjklmnpqrstvwxyz")
			end
		}
	}
	new_first_name = new_name[1].join('')
	new_last_name = new_name[0].join('')
	return new_first_name.capitalize + " " + new_last_name.capitalize
end

real_name = ""
agent_names = {}
input = 0

puts "Hello agent.  Please type in your first and last name so we can create a new spy name for you. 
Type 'quit' when finished."
=begin
now i want to create a loop that will take user input until they type 'quit'. in order to use the 
input in the hash, it needs to be turned into a symbol. that way they can be nested as arrays in the 
agent_names hash.
=end
until real_name.downcase == "quit"
	real_name = gets.chomp
	if real_name.downcase != "quit"
			x = input.to_s.to_sym
			agent_names[x] = [name_change(real_name), real_name]
			puts name_change(real_name)
	end
	input += 1
end
#here i am printing a string that shows the contents of the hash and the changes to the real name.
agent_names.each do |entry, spy_name|
puts "#{spy_name[0]} is #{spy_name[1]}'s new spy name."
end