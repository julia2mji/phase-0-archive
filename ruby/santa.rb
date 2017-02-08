class Santa 
	def initialize (gender, ethnicity)
		#puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end 

	def reindeer_ranking
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end 

	def age
		age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	
	def eat_milk_and_cookies (cookie_type)
		puts "That was a good #{cookie_type} cookie"
	end 


	
end 

santaing = Santa.new ("agender", "Japanese")
santaing.speak
santaing.eat_milk_and_cookies ("shortbread")	
