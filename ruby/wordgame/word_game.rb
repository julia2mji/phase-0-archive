class WordGame
	attr_accessor :words, :guess, :new_word, :game_over, :game_count
	attr_reader :is_over
	

	def initialize (word)
		@words = word.chars
		@new_word = []
		@game_count = 0
		@is_over = false
	end 


	def make_guess (char)
		if @new_word.include?(char)
			puts "you've already guessed this. try another letter."
		else 
			if @words.include?(char)
				@words.length.times do |i|
					if @words[i] == char
						@new_word.insert(i, guess)
						@new_word.delete_at(i+1)
					end
			end

		else 
			puts "wrong letter. try another letter."
		end
		@game_count += 1
		end 
		p @new_word						
	end 

	def game_over
		if @new_word == @words
			puts "You won! You really won!"
		@is_over = true	
		elsif  @game_count == @words.length 
			puts "You failed :( "
			@is_over = false
		end
		end 

end 

#user interface/driver code
puts "Welcome to the Word Game!"

puts "Hi, User 1! Enter a secret word?"
secret_word = gets.chomp.downcase
game = WordGame.new(secret_word)



loop do

	puts "Hi, User 2! Enter a letter."
	guess = gets.chomp.downcase
	game.make_guess(guess)
	game.is_over
	break if game.game_count == game.words.length || game.new_word == game.words
end 

