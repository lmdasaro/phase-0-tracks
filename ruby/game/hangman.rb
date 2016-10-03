class Hangman
	attr_reader :guess_count, :game_over, :answer, :guess_display, :guess_max

	def initialize(answer)
		@answer = answer.downcase.split("")
		@guess_max = (answer.length.to_i - 1)
		@guess_count = 0
		@guess_array = []
		@correct_letter_index = []
		@guess_display = ['_'] * answer.length
		@game_over = false
	end
	def correct_answer
		@guess_display == @answer || !@guess_display.include?('_')
	end
	def repeat_letter(letter)
		@guess_array.include?(letter)
	end
	def guess_by_letter(letter)
		index = 0	
		@guess_array << letter
		@answer.each do |input|
			if input == letter
				@correct_letter_index << index
			end
			index += 1
		end
	 	@correct_letter_index.each do |index|
	 		@guess_display[index] = @answer[index]
	 	end
 		@guess_max -= 1	
 		@guess_display.join(' ')
	end
	def check_word(letter)
		@guess_count += 1
		if @word == @answer
			@game_over = true
		else
			false
		end
	end
	

end

#user interface
puts "Let's play some hangman!"
puts "Player 1: Please enter a word."
answer = gets.chomp
game = Hangman.new(answer)
puts "Player 2: You have #{@guess_max} guesses."

while !game.correct_answer
	puts "Player 2: Please try and guess the word by entering a letter."
	guess = gets.chomp.downcase
	if !game.check_word(guess)
		puts "Nope. Please enter a different letter."
	end
end
until game.correct_answer || guess_max
	guess = gets.chomp.downcase 
	game.guess_by_letter(letter)
	p game.guess_display
end 
if game.correct_answer?
	puts "Congrats! The answer was #{game.answer}!. You won after #{game.guess_array.length} tries."
else 
	puts "Aww. You aren't very good at this, are you? The answer was #{game.answer}."
end

###NOTES TO SELF
# creating a hangman word guessing game:
# ask player 1 for a word.
# ask player 2 to guess a word. provide the amount of characters by leaving underscores.
# as the player guesses, count down the amount of tries(the tries count if they are new letters). after finite amount of tries(guess amount related to word length), user 2 either wins or loses.
# if player 2 wins, get message of: Congrats! The answer was ""!. You won after x tries.!
# if player 2 loses, get message of: Aww. You aren't very good at this, are you? The answer was "".