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

	def celebrate_birthday (new_age)
		@age = age + 1 #i'm not really sure that i'm doing this right
	end	

	def get_mad_at (reindeer_name)
		

	end 	

	def gender (new_gender)
		@gender = new_gender
	end	

	def age
		@age
	end	

	def ethnicity
		@ethnicity
	end	


	
end 

santaing = Santa.new ("agender", "Japanese") #i don't really see where i'm going wrong here
santaing.speak
santaing.eat_milk_and_cookies ("shortbread")


#not sure why i'm getting this error
#ruby santa.rb
# santa.rb:28: syntax error, unexpected ',', expecting ')'
# santaing = Santa.new ("agender", "Japanese")
                                # ^




