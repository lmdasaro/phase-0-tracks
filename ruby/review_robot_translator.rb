##robot translator
## If a letter is capitalized and it's in the first half of the alphabet, it becomes "bloop".
## Otherwise, if a letter is capitalized or it's the letter "e", it becomes "buzz".
## If it's not a letter at all, it becomes "boing".
## Otherwise, it becomes "beep".
## "Happy Halloween!" => "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

######BUSINESS LOGIC
def translate_char(char)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length / 2 ##(or we could set halfway = 13)
	is_capitalized = (char.upcase == char)
	index_of_char = alphabet.index(char.downcase)
	
	if index_of_char == nil  ##(or we could say if !alphabet.index(char.downcase))
		"boing"
	elsif is_capitalized && index_of_char < halfway
		"bloop"
	elsif is_capitalized || char == "e"
		"buzz"
	else
		"beep"
	end
end

def translate_phrase(phrase)
	char_index = 0
	translated_response = ""
	while char_index < phrase.length
		translated_response << translate_char(phrase[char_index])
		char_index += 1
	end
	translated_response
end

# puts translate_phrase("Happy Halloween!") == "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

puts translate_phrase("Happy Halloween!")

puts translate_phrase("Hi, my name is Lisa!")

#######USER INTERFACE

loop do
	puts "Enter a phrase to translate: (or type 'q' for quit)"
	inputted_phrase = gets.chomp
	break if inputted_phrase == 'q'
	puts translate_phrase(inputted_phrase)
end
