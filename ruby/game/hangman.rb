class Hangman
	attr_reader :guess_count, :game_over

	def initialize
		@word
		@guess_count = 0
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


while !game.game_over
	puts "Player 2, please try and guess the word by entering a letter."
	guess = gets.chomp
	if !game.check_word
		puts "Nope. Please enter a different letter."
	end
end
