class Hangman
	attr_reader :guess_count, :game_over, :answer, :guess_display

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
game = Hangman.new
puts "Player 1, please enter a word."
answer = gets.chomp
puts "Player 2, you have #{game.guess_max} guesses."

while !game.game_over
	puts "Player 2, please try and guess the word by entering a letter."
	guess = gets.chomp.downcase
	if !game.check_word
		puts "Nope. Please enter a different letter."
	end
end
until game.correct_answer || @guess_max
	guess = gets.chomp.downcase 
	game.guess_by_letter(letter)
	p game.guess_display
end 
if game.correct_answer?
	puts "Congrats! The answer was #{game.answer}!. You won after #{game.guess_array.length} tries."
else 
	puts "Aww. You aren't very good at this, are you? The answer was #{game.answer}."
end