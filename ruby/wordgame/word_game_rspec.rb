require_relative "game"

describe WordGame do 
	let(:game) {WordGame.new ('hello')}

	it "splits word into an array" do
		expect(game.words).to eq ["h", "e", "l", "l", "o"]
	end 
	
	it "checks if the letter is in the new words array"	do
		game.make_guess ("o")
		expect(game.new_word).to eq [nil, "o"]
	end 
	
	it "checks to see if game is over"	do
		expect (game.is_over).to eq nil
	end 
	
	it "checks if game won"	do
		game.new_word = ["h", "e", "l", "l", "o"]
		expect(game.is_over).to eq true
	end 
	
	it "checks if game lost" do
		game.game_count = game.words.length
		expect(game.is_over).to eq false
	end 		
end