class Santa 
	attr_reader :age, :ethnicity
	attr_accessor :celebrate_birthday, :get_mad_at, :gender

	santas = []
	genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	ethnicities = ["black", "Latino", "white", "Japanese", "Korean", "Chinese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	genders.length.times do |i|
  	santa << Santa.new(genders[i], ethnicities[i])
	end

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

	# def celebrate_birthday=(new_age)
	# 	@age = age + 1 #i'm not really sure that i'm doing this right
	# end	

	# def get_mad_at=(reindeer_name) #do i just reset the reinder ranking var? 
	# 	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Comet", "Cupid", "Donner", "Blitzen", "Vixen"]

	# end 	

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end	

	# def age
	# 	@age
	# end	

	# def ethnicity
	# 	@ethnicity
	# end	


	
end 

santa = Santa.new ("agender", "Japanese") 
santa.speak
santa.eat_milk_and_cookies ("shortbread")
santa.celebrate_birthday
santa.get_mad_at
santa.reindeer_ranking
santa.gender("male")
santa.age
santa.ethnicity

	santas = []
	genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	ethnicities = ["black", "Latino", "white", "Japanese", "Korean", "Chinese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	ages = [20, 35, 42, 56, 68, 71, 89, 94, 111, 128]

	50.times do 
		santa = Santa.new 
		santas << santa
	end	



	random_age = ages.sample (10)   
	santas << Santa.new (random_age)

	genders.length.times do |i|
  	santas << Santa.new(genders[i], ethnicities[i])
	end

	p santas 



#not sure why i'm getting this error
#ruby santa.rb
# santa.rb:28: syntax error, unexpected ',', expecting ')'
# santaing = Santa.new ("agender", "Japanese")
                                # ^
#i can't properly test my code because of this error... i dunno where it's coming from


#arr.sample gives me a random part of the array arr.sample(2) gives me two random parts of the array 

