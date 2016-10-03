class Hangman
	attr_reader :guess_count, :game_over :answer

	def initialize(answer)
		@answer = answer.downcase.split("")
		@guess_max = @answer.length
		@guess_count = 0
		@guess_array = []
		@game_over = false
	end

	def check_word(letter)
		@guess_count += 1
		if @word == #{answer}
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
puts "Player 2, you have #{game.guess} guesses."

while !game.game_over
	puts "Player 2, please try and guess the word by entering a letter."
	guess = gets.chomp
	if !game.check_word
		puts "Nope. Please enter a different letter."
	end
end
